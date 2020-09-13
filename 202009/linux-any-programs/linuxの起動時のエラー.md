$ dmesg

[    7.419223] [drm] [nvidia-drm] [GPU ID 0x00000100] Loading driver
[    7.419224] [drm] Initialized nvidia-drm 0.0.0 20160202 for 0000:01:00.0 on minor 0
[    7.463763] nvidia-uvm: Loaded the UVM driver, major device number 235.
[    7.467979] nvidia-gpu 0000:01:00.3: i2c timeout error e0000000
[    7.467996] ucsi_ccg 0-0008: i2c_transfer failed -110
[    7.468008] ucsi_ccg 0-0008: ucsi_ccg_init failed - -110
[    7.468023] ucsi_ccg: probe of 0-0008 failed with error -110

#   I2Cデバイスってのがあるらしい`何やってるかは全然わからんけど`
http://www.picfun.com/f1/f06.html

#   I2C通信とは】

　F1ファミリに内蔵されているMSSP(Master Synchronous Serial Port)モジュールは、
シリアルEEPROMやD/Aコンバータなどの周辺ICを専用のシリアルインターフェースで
接続し、高速の同期式通信を可能とします。
このMSSPモジュールの使い方には下記の2種類があります。

① SPI（Serial Peripheral Interface）モード
　モトローラ社が提唱した方式で、3本または4本の接続線で構成し、数Mbpsの通信が可能　　　　

② I2C（Inter－Integrated Circuit）モード
　フィリップス社が提唱した方式で、2本の接続線で1個のマスタに対し複数のスレーブ
　との間でパーティーラインを構成し、最大1Mbpsの通信が可能です。

　この2方式のシリアル通信はいずれもオンボードでのIC間の通信が目的になっており、
装置間のような距離のある通信には向いていません。
そのため「オンボードシリアル通信」とも呼ばれています。


#   ucsi_ccg

USB type-C関連のプログラム
i2c_nvidia_gpuを調べてみるとNVIDIAのGPUからUSB type-C経由で出力するときに使われる模様

https://czsy4096.seesaa.net/

#   解決方
type usbcを使っていなければ
blacklist i2c_nvidia_gpuを
/etc/modprobe.dのなかの、confに入れてやればいいみたい

# read only のファイルviで書き込む
http://tm.root-n.com/unix:command:vim:readlonly_write

