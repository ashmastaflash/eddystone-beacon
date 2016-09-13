# Use hcitool to bring up interface 
 hciconfig hci0 down
 hciattach /dev/ttyAMA0 bcm43xx 115200 noflow -
 hciconfig hci0 up

echo "Will advertize this URL:  $ADVERTISE_URL"
PyBeacon -u $ADVERTISE_URL

while true; do
 sleep 300
done
