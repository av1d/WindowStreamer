#!/bin/bash

# This will try to find your default playback device and test it.

# Get the default audio playback device
default_sink=$(pactl info | grep 'Default Sink' | awk '{print $3}')

echo "Your default device may be $default_sink"
echo "We are going to try a test recording."
echo "Start playing sound on YouTube or something now then press enter to begin."
echo "Let it run for 10 seconds or so then press CTRL+C to stop ffmpeg from recording."
read -p "" nothing

# Set the output file name and format
output_file="test_recording_$(date +'%Y%m%d%H%M').wav"

# Record audio using ffmpeg
ffmpeg -f pulse -i "$default_sink.monitor" "$output_file"

echo "The result is in $output_file. Play it back and see if it worked."
echo "If so, modify the stream.sh file accordingly. See that file for guidance."
