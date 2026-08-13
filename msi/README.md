# Script for controlling Embedded Controller in MSI laptops

It can control CPU working mode, fan mode, battery charge levels, etc. For more details, just run the script. Help will show.

**Require msi-ec and msi_wmi_platform kernel module, and following packages to work (Ubuntu) to work**

```
jq - lightweight and flexible command-line JSON processor
lm-sensors - utilities to read temperature/voltage/fan sensors
```

[https://github.com/BeardOverflow/msi-ec](https://github.com/BeardOverflow/msi-ec)

Module `msi_wmi_platform` is already part of Ubuntu kernel. You need to enable it by `modprobe msi_wmi_platform`.