##########################################################################################
#
# TermuxBot Magisk Module Uninstaller Script
#
##########################################################################################

# uninstall manager apk
: "
uninstall_manager_apk() {
  pm uninstall cn.suroy.autoboot
}
"

remove_termuxBot_data_dir() {
  rm -rf /data/termux-boot
}

# remove termuxBot data
remove_termuxBot_data_dir

