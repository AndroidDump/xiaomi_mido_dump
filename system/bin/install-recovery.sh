#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:29250894:aa84605dd94d831fd09aaf3e4bdde2e0109c7a90; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:26256714:9e77ca1f03b8c8c326cd6b69a5060ed4c144f32c EMMC:/dev/block/bootdevice/by-name/recovery aa84605dd94d831fd09aaf3e4bdde2e0109c7a90 29250894 9e77ca1f03b8c8c326cd6b69a5060ed4c144f32c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
