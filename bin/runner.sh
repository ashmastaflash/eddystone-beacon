# Using hcitool to do things...
hciconfig hci0 down
hciattach /dev/ttyAMA0 bcm43xx 115200 noflow -
hciconfig hci0 up
hciconfig hci0 leadv 3
hcitool -i hci0 cmd $BROADCAST_THIS

while true; do
 sleep 300
done
