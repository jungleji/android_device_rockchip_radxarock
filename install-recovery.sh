#!/system/bin/sh

# If you're implementing this in a custom kernel/firmware,
# I suggest you use a different script name, and add a service
# to launch it from init.rc

# Launches SuperSU in daemon mode only on Android 4.3+.
# Nothing will happen on 4.2.x or older, unless SELinux+Enforcing.
# If you want to force loading the daemon, use "--daemon" instead

/system/xbin/daemonsu --auto-daemon &

echo "radxa xxxxxxxxxxxxxxxxxxxxxxxxxx"
mount -o rw,remount -t ext4 /system
chmod 0777 /system/bin/.ext
chmod 6755 /system/bin/.ext/.su
chmod 6755 /system/xbin/su
chmod 6755 /system/xbin/daemonsu
#chmod 0755 /system/etc/install-recovery.sh
chmod 0755 /system/etc/init.d/99SuperSUDaemon
chmod 0644 /system/etc/.installed_su_daemon
mkdir /mnt/wpy
mount -o ro,remount -t ext4 /system

# Some apps like to run stuff from this script as well, that will 
# obviously break root - in your code, just search this file
# for "install-recovery-2.sh", and if present, write there instead.

#/system/etc/install-recovery-2.sh

