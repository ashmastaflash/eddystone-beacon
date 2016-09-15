# Eddystone beacon

## Runs on https://sitch.io

This uses a templated Dockerfile, so in theory it should work with many
platforms.  But who knows?  Not this guy.  Because I'm only testing on a RPi3.
If you're having luck with another platform, I'd love to hear about it.  
Give me a PR with your Github username and hardware stack details (platform,
bluetooth adapter, etc...)

This uses a driver from the OpenELEC project, and may be subject to a different
license situation from Broadcom.  Fortunately, I'm only linking to the thing
and I leave the research to you, dear reader.

As far as I can tell, you can't adjust the tx power of the RPi3's embedded BT
radio.

Under the covers this image uses Google's PyBeacon tool to broadcast the
URL you set in the env var named `ADVERTISE_URL`.  You should probably use a
URL shortening service, but I'm not judging.

## Tested platforms

| username        | platform                                |
|-----------------|-----------------------------------------|
| ashmastaflash   | Standard R-Pi3, with on-board Bluetooth |
| ashmastaflash   | R-Pi2 with Sena Technologies UD100a     | 
