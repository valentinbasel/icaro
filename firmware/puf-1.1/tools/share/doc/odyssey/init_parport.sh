#/bin/sh
# $Id: init_parport.sh,v 1.2 2009-08-29 20:26:34 gaufille Exp $
# This script should be executed as root

# stop cups that claims the parallel port
/etc/init.d/cups stop

# unload the parallel printer module
modprobe -r lp

# load the user parallel port module
modprobe ppdev

echo Initialization done.
echo Now, you can initialize the parallel programmer with odyssey init.
