# Pluto_mods

The files in this repository are intended for use with the F5OEO Pluto Firmware for DTV.
They are modified versions of the original files. 

Due to the way the Pluto file system works it is not possible to permanently change any files. 
However there is a way to update the files on every reboot.

Copy the files from the repository onto a USB memory stick.

Connect a USB Hub to the Pluto OTG port and plug the USB stick into the hub.

Apply power to the Pluto power port. 

On detecting the USB drive the Pluto will auto run the file called 'runme0.sh'. 
This shell script will copy the modified files into the Pluto. 

This is only temporary and does not modify your Pluto at all. 
Powering up the Pluto without the USB stick will revert back to the original versions. 


Updates currently implemented....

1. Change the QO-100 Channels drop down list to include the new revised channel list. 

2. Add Codec selection for the H264/H265 Encoder box.

3. Add Sound Enable/Disable option for the H264/H265 Encoder box.

Note that changing encoder from H265 to H264 does not currently change the video resolution. This is controlled by the strategy.sh file. This has not yet been optimised for the different codecs. 

