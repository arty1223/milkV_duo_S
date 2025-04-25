# milkV_duo_S
Custom-built Milk-V Duo S firmware with additional basic software.  
Additional software was installed via Buildroot's menuconfig, following [this guide](https://milkv.io/docs/duo/getting-started/buildroot-sdk#configure-application-packages-preset-in-buildroot).

List of added packages:
1. nano
2. bash
3. neofetch
4. htop

Additional scripts:
* Fixed MAC address – added the script from [this guide](https://milkv.io/docs/duo/getting-started/duos#fixed-wifi-mac-address).
* Root partition resizing – added the script from [here](https://milkv.io/docs/duo/getting-started/setup#extended-root-partition-for-sd-card-boot-mode).
