CyanogenMod on Radxa Rock
=========================

Build instruction
-----------------

1) Fetch CyanogenMod cm-11.0 branch

    $ mkdir ~/radxarock
    $ cd ~/radxarock
    $ repo init -u git://github.com/CyanogenMod/android.git -b cm-11.0

2) Create repo local_manifests

    $ cd .repo
    $ mkdir local_manifests

Copy local_manifests/radxarock.xml under this project to .repo/local_manifests

3) Sync code

    $ cd ~/radxarock
    $ repo sync

4) Get CyanogenMod prebuilts

    $ cd vendor/cm
    $ ./get-prebuilts

5) Prepare kernel

    $ cd ~/radxarock/kernel
    $ ARCH=arm make rk3188_radxa_rock_kitkat_defconfig
    $ make -j10 kernel.img

6) Run envsetup

    $ cd ~/radxarock
    $ . build/envsetup.sh
    $ breakfast cm_radxarock-eng

7) Create image

    $ cd ~/radxarock
    $ mka
    $ ./mkimage.sh ota

Notes
-----

1) Recovery

The recovery in this poring comes from Rockchip SDK. It's not CWM recovery.
So, you must use Rockchip tools to flash the update.img to nand.

2) API

Because the cm-11.0 branch of CyanogenMod is under active developing,
sometime after syncing, you will encounter compiling errors.

If the errors are caused by android API update, you can run `make update-api` command
updating the api located in frameworks/base/api/current.txt.

Feedback
--------

If you have any questions about this porting, please send mail to radxa@googlegroups.com
