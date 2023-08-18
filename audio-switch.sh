#!/bin/bash
arg="${1:-}"
validParam=false

case "$arg" in
--sp)
	SINK="alsa_output.usb-Generic_USB_Audio-00.analog-stereo"
	IMAGE_URI="/usr/share/icons/HighContrast/32x32/devices/audio-headphones.png"
	DEVICE_TYPE="speakers"
	validParam=true
	;;
--hp)
	SINK="alsa_output.usb-Sennheiser_GSP_370-00.analog-stereo"
	IMAGE_URI="/usr/share/icons/HighContrast/32x32/devices/audio-headphones.png"
	DEVICE_TYPE="headphones"
	validParam=true
	;;
*)
	echo Did not recognize arg "$1"
	;;
esac

if [ $validParam = true ]; then
	pacmd set-default-sink "$SINK"
	pacmd list-sink-inputs | grep index | while read line; do
		pacmd move-sink-input $(echo $line | cut -f2 -d' ') "$SINK"
	done
	notify-send -i $IMAGE_URI "Switched to ${DEVICE_TYPE}!"
fi
