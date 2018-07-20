#!/system/bin/sh
byname=/dev/block/platform/7824900.sdhci/by-name
target=/sdcard/temp
partitions="apdp carrier cid dip dpo frp fsc hw kpan limits logs metadata misc mota msadp padA persist sec sp ssd syscfg utags utagsBackup"

for partition in $partitions
do
	dd if=$byname/$partition of=$target/$partition.img
done