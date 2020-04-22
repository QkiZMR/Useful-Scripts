#!/bin/bash
CP=b
fastboot getvar max-sparse-size
fastboot oem fb_mode_set
fastboot flash partition gpt.bin
fastboot flash bootloader bootloader.img
fastboot flash modem_$CP NON-HLOS.bin
fastboot flash fsg_$CP fsg.mbn
fastboot erase modemst1
fastboot erase modemst2
fastboot flash bluetooth_$CP BTFM.bin
fastboot flash dsp_$CP dspso.bin
fastboot flash logo_$CP logo.bin
fastboot flash boot_$CP boot.img
fastboot flash system_$CP system.img_sparsechunk.0
fastboot flash system_$CP system.img_sparsechunk.1
fastboot flash system_$CP system.img_sparsechunk.2
fastboot flash system_$CP system.img_sparsechunk.3
fastboot flash system_$CP system.img_sparsechunk.4
fastboot flash system_$CP system.img_sparsechunk.5
fastboot flash vendor_$CP vendor.img_sparsechunk.0
fastboot flash vendor_$CP vendor.img_sparsechunk.1
fastboot flash oem_$CP oem.img
fastboot erase carrier
fastboot erase ddr
fastboot oem fb_mode_clear