import subprocess
import sys
import time
import webview

"""
    WindowStreamer v1.0 - av1d

    Requires ffmpeg 4.4 or greater and pywebview.
    (python3 -m pip install pywebview)

    Instructions:
    1 - Run sound_test.sh to get your playback device information.
    2 - Modify stream.sh with the information.
        Read the contents of all files for information.
    3 - Configure your settings on the 3 lines below.
    4 - run this file (browser.py) and go!
"""
# user settings:
URL = 'https://gyroma.com'
browser_width  = 480
browser_height = 320




def getInput(window):

    input(
        'To begin streaming, press ENTER once page is fully loaded\n'
        'To end the program, close the browser window.'
    )

    # start ffmpeg subprocess
    subprocess.run(['./stream.sh'])


if __name__ == '__main__':

    window = webview.create_window(
        'WindowStreamer', 
        URL,
        width     = browser_width,
        height    = browser_height,
        frameless = False
    )
    webview.start(getInput, window)
