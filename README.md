# WindowStreamer
##### Easily stream a single application window with audio

WindowStreamer is a set of scripts which utilized pywebview and ffmpeg to livestream a custom browser window over UDP (or any protocol ffmpeg supports), hopefully with ease.

- easily resize the video to any resolution
- stream webpages with ease, great for putting web apps on a feed
- runs on minimal hardware like Raspberry Pi

## Features

- loads any site or HTML file of your choice in custom browser window
- attaches ffmpeg only to that browser window, even minimized.
- set custom resolution of the browser window
- stream only video or audio as well over your LAN or to the Internet
- great for adding video output to web apps
- can stream to file as well
- extremely lightweight, runs on basically anything

Originally created to add video output to the WeatherStar 4000 simulators but it's useful for anything. 

## Installation

Download, edit each of the 3 scripts. Follow the comments within.
Requires pywebview and ffmpeg 4.4 or greater to run.

Install the dependencies:

```
python3 -m pip install pywebview
```

Install ffmpeg 4.4 via package manager of your choice.

## Run

After configuring everything, run browser.py  
Close its browser window to exit.

## License

MIT
