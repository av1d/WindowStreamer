#!/bin/bash

# To watch the stream, enter udp://127.0.0.1:1234 into your media player.
# To setup your sound device, run sound_test.sh

# get information for the window named 'WindowStreamer'
WINDOW_ID=$(xwininfo -root -tree | grep 'WindowStreamer' | awk '{ print $1 }')

# example streaming setup with no audio (should work for everyone):
ffmpeg -y \
  -f x11grab \
  -framerate 30 \
  -window_id $WINDOW_ID \
  -i :0.0 \
  -codec:v libx264 \
  -preset ultrafast \
  -tune zerolatency \
  -f mpegts udp://127.0.0.1:1234



# example streaming setup with audio.
# follow the same pattern except change "-i alsa_output.pci-0000_00_1b.0.analog-stereo.monitor"
# with your information (according to sound_test.sh, for Linux only).

#ffmpeg -y \
#  -f x11grab \
#  -framerate 30 \
#  -window_id "$WINDOW_ID" \
#  -i :0.0 \
#  -f pulse \
#  -i alsa_output.pci-0000_00_1b.0.analog-stereo.monitor \
#  -c:v libx264 \
#  -preset ultrafast \
#  -tune zerolatency \
#  -f mpegts udp://127.0.0.1:1234
