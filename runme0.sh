# wait for inbuilt udpts.sh to start

while !(ps -a | grep -v grep | grep -q udpts.sh); do
sleep 1
done

#stop it

killall udpts.sh

#copy the updated versions 

cp -f /media/sda/encoder_control.php /www
cp -f /media/sda/pluto.php /www
cp -f /media/sda/save.php /www
cp -f /media/sda/udpts.sh /root
cp -f /media/sda/strategy.sh /root

# create a dummy file to confirm this script has been run.

touch /root/Patches_Loaded!

#start the new version of udpts.sh

/root/udpts.sh > /dev/null < /dev/null 2> /dev/null &
