#!/bin/sh

DEST=`pwd`
cd ~/rpmbuild
rpmbuild -ba SPECS/nodejs.spec
cp RPMS/x86_64/nodejs*.rpm $DEST
cd -
