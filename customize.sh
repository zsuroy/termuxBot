#!/sbin/sh
#####################
# TermuxBot Customization
#####################
SKIPUNZIP=1

# prepare Termux execute environment
ui_print "- Prepare TermuxBot execute environment."
mkdir -p /data/termux-boot
mkdir -p /data/termux-boot/run
mkdir -p $MODPATH/scripts

ui_print "- Install TermuxBot core execute files"
unzip -j -o "${ZIPFILE}" 'termux/scripts/*' -d $MODPATH/scripts >&2
unzip -j -o "${ZIPFILE}" 'service.sh' -d $MODPATH >&2
unzip -j -o "${ZIPFILE}" 'uninstall.sh' -d $MODPATH >&2

# pm command was not working in install scipt?
# ui_print "- Install TermuxBot Manager APK"
# pm install $MODPATH/system/app/com.termux/termux.apk

# generate module.prop
ui_print "- Generate module.prop"
rm -rf $MODPATH/module.prop
touch $MODPATH/module.prop
echo "id=TermuxBot" > $MODPATH/module.prop
echo "name=TermuxBot for Android" >> $MODPATH/module.prop
echo "version=1.0.2" >> $MODPATH/module.prop
echo "versionCode=20230205" >> $MODPATH/module.prop
echo "author=Suroy" >> $MODPATH/module.prop
echo "description=Termux boot with service scripts for Android" >> $MODPATH/module.prop

inet_uid="3003"
net_raw_uid="3004"
set_perm_recursive $MODPATH 0 0 0755 0644
set_perm  $MODPATH/service.sh    0  0  0755
set_perm  $MODPATH/uninstall.sh    0  0  0755
set_perm  $MODPATH/scripts/start.sh    0  0  0755
set_perm  /data/termux-boot                ${inet_uid}  ${inet_uid}  0755
