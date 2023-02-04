#!/system/bin/sh

MODDIR=${0%/*}

# run my app when Android boot
start_wake () {
  am start -n cn.suroy.autoboot/com.stardust.autojs.inrt.SplashActivity &>> /data/termux-boot/run/service.log &
  am start -p com.termux &>> /data/termux-boot/run/service.log &
}


if [ ! -f /data/termux-boot/manual ] ; then
  start_wake
fi
