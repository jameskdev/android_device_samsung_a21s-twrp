# android_device_samsung_a21s-twrp
Device source tree for Galaxy A21S (TWRP ONLY)

WORKING: Backup, Restore, Flash Zip, Vibration, MTP, Screen Brightness, ADB, File Manager, Terminal

NOT Working: Device encryption (When used without decrypting device via FSTAB edit, all the files in /userdata appear broken), Flashing some super.img files (When flashing, the super partition breaks), Magisk flashing (The Zip file installs successfully, but the device goes into bootloop upon reboot. Seems to be a problem with stock rom though.)

Notes: This recovery was tested on Android 10 on KOREAN VERSION of Galaxy A21s (SM-A217N), and compatibility with Android 11 update or devices from other regions (A217F, A217M) is NOT guaranteed.

In order to disable device encryption, after flashing the recovery, open up 'fstab.exynos850' on your device's boot.img, system_root partition(/fstab.exynos850), and vendor partition(/vendor/etc/fstab.exynos850), remove all terms that state 'avb', 'fileencryption=ice', 'errors=panic', and replace/re-flash them onto the device. Please note that disabling encryption will make your device more vulnerable, and you must perform a complete wipe of your device's userdata partition after doing so.
