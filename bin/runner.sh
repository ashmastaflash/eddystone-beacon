# Using hcitool to do things...
hciattach /dev/ttyAMA0 bcm43xx 115200 noflow -
hciconfig hci0 up
hciconfig hci0 leadv 3
hcitool -i hci0 cmd $BROADCAST_THIS
