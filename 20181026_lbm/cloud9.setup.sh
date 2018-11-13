#!/bin/sh
echo"start cloud9.setup.sh"
sudo yum --enablerepo=epel,remi,rpmforge install libxml2 libxml2-devel &
sudo yum -y install curl &
sudo yum -y install libcurl libcurl-devel &
sudo yum install -y postgresql96 postgresql96-devel postgresql96-contrib &
sudo yum install -y ImageMagick ImageMagick-devel &
wait
echo $?
echo"end cloud9.setup.sh"