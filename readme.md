This is a small script to switch the audio sinks on a Ubuntu linux distro. This is not particularly necessary if there is a desktop/GUI attached to the PC, though, if you are using a window manager (such as i3) or prefer to use the console, you may find this useful.

The sinks (read: audio devices) will need to be updated upon initial use.

Invocation currently consists of:

`./audio-switch.sh --sp` - switch to my headphones
`./audio-switch.sh --hp` - switch to my speakers

Incorrect/bad input will echo a failure message. When good input is provided, an image is sent to the OS notification handler with an image. 
