This is a small script to switch the audio sinks on a Ubuntu Linux distro. 

This probably will not be particularly useful for...literally _anyone_ else, though, should you find yourself looking for a way to switch audio inputs on a Linux Ubuntu installation from the console/CLI, this may be useful.

Ubuntu has a utility called `pacmd` which allows you to view/modify the audio sinks on the OS. 

Before using this script, I got the names used for my devices from `pacmd`.

* The sinks (read: audio devices) will need to be updated upon initial use.

Invocation currently consists of:

`./audio-switch.sh --sp` - switch to my headphones


`./audio-switch.sh --hp` - switch to my speakers

Incorrect/bad input will echo a failure message. When good input is provided, an image is sent to the OS notification handler with an image. 
