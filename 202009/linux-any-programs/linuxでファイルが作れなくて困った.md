# linuxでファイルが作れなくて困った
vscodeでマウントしている別ディスクにファイルを保存しようとしたらエラーを吐く


 /dev/sdb1

書き込み権限ありで再読み込みして解決

それでもなんか動きがおかしい、多分スリープしてずっとつけっぱなのが行けなかった可能性が
あるのでrebootしてみる

rebootしても別に解決するわけではなかったので
マウントする時にいちいちコマンドを打つ必要がありそう


それでもファイルの移動とかでうまくいかないので、改めて基本から
調べてみた

一般ユーザでもマウントができるようにする
 mount -o uid=<ユーザID>,gid=<グループID> /dev/sdb1 


 uid=<ユーザID>,gid=<グループID>が分からないので表示するコマンドを調べる
 　　　　　　whoami
 yono@OG:~$ id yono
uid=1000(yono) gid=1000(yono) groups=1000(yono),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),114(lpadmin),134(sambashare),136(docker),1001(developer)

つまり

 mount -o uid=1000,gid=1000 /dev/sdb /mnt

 こうなる
root@OG:/home/yono/Bild#  mount -o uid=1000,gid=1000 /dev/sdb
mount: /dev/sdb: can't find in /etc/fstab.
root@OG:/home/yono/Bild#  mount -o uid=1000,gid=1000 /dev/sdb /mnt
mount: /mnt: /dev/sdb はマウント済み、もしくはマウントポイントが使用中です.
root@OG:/home/yono/Bild# mount -o uid=1000,gid=1000 /dev/sdb /mnt
mount: /mnt: wrong fs type, bad option, bad superblock on /dev/sdb, missing codepage or helper program, or other error.
root@OG:/home/yono/Bild#

ディスクのファイルシステムがそもそもwindowsでしか使ってこなかったので
win用のファイルシステムになってんじゃないのか問題

MacO、Windows 10、Ubuntu Linux 19.04で使用される2019年の外付けHDDに最適なフォーマット
https://www.it-swarm.dev/ja/external-hdd/maco%E3%80%81windows-10%E3%80%81ubuntu-linux-1904%E3%81%A7%E4%BD%BF%E7%94%A8%E3%81%95%E3%82%8C%E3%82%8B2019%E5%B9%B4%E3%81%AE%E5%A4%96%E4%BB%98%E3%81%91hdd%E3%81%AB%E6%9C%80%E9%81%A9%E3%81%AA%E3%83%95%E3%82%A9%E3%83%BC%E3%83%9E%E3%83%83%E3%83%88/998353831/


root@OG:/home/yono/Bild# df -T
Filesystem     Type      1K-blocks       Used Available Use% Mounted on
udev           devtmpfs    8121040          0   8121040   0% /dev
tmpfs          tmpfs       1633332       1940   1631392   1% /run
/dev/sdc2      ext4      122214016   38682600  77280204  34% /
tmpfs          tmpfs       8166648     340380   7826268   5% /dev/shm
tmpfs          tmpfs          5120          4      5116   1% /run/lock
tmpfs          tmpfs       8166648          0   8166648   0% /sys/fs/cgroup
/dev/loop0     squashfs     187648     187648         0 100% /snap/dbeaver-ce/79
/dev/loop2     squashfs      63616      63616         0 100% /snap/gtk-common-themes/1506
/dev/loop1     squashfs     165376     165376         0 100% /snap/gnome-3-28-1804/128
/dev/loop3     squashfs      30720      30720         0 100% /snap/snapd/8790
/dev/loop4     squashfs      56704      56704         0 100% /snap/core18/1885
/dev/sdc1      vfat         523248       7944    515304   2% /boot/efi
tmpfs          tmpfs       1633328         96   1633232   1% /run/user/1000
/dev/sdb1      fuseblk  1953512444 1665536372 287976072  86% /media/yono/ボリューム


調べたら　fuseblk
/dev/sdb1      fuseblk  1953512444 1665536372 287976072  86% /media/yono/ボリューム

useblk　=　NTFS　らしい

FAT32。 3つのシステムすべてで読み取り/書き込み。ジャーナルされません。ファイルサイズ<4G。
NTFS。 Macでの貧弱な書き込みサポート。
exFAT。 3つのシステムすべてで読み取り/書き込み。ジャーナルされません。

えぇ・・・なんでNTFSなの・・・→Windowsは「FAT」や「NTFS」を使っていますってあった

じゃぁそもそもNTFSの外部ボリュームに情報をのこすのはよくないやん
というわけで、プロジェクト関連のをクローンし直しが必要になってきた

諦めよ・・・容量が必要になったら新規ボリューム買いましょ



