#/bin/sh

yum install wget -y
wget http://download.fedoraproject.org/pub/epel/5/i386/epel-release-5-4.noarch.rpm
rpm -Uvh epel-release-5-4.noarch.rpm
rm epel-release-5-4.noarch.rpm

yum install rpmdevtools -y
rpmdev-setuptree

yum groupinstall 'Development Tools' -y

wget http://nodejs.org/dist/v0.6.5/node-v0.6.5.tar.gz
mv node-v0.6.5.tar.gz ~/rpmbuild/SOURCES

ln -s `pwd`/nodejs.spec ~/rpmbuild/SPECS/nodejs.spec
