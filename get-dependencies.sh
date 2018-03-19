#!/bin/sh
## one script to be used by travis, jenkins, packer...

umask 022

rolesdir=$(dirname $0)/..
[ $APPVEYOR ] && rolesdir=/etc/ansible/roles

[ ! -d $rolesdir/mrlesmithjr.windows-domain-controller ] && git clone https://github.com/mrlesmithjr/ansible-windows-domain-controller.git $rolesdir/mrlesmithjr.windows-domain-controller
#[ ! -d $rolesdir/juju4.win-ad-monitor ] && git clone https://github.com/juju4/ansible-win-ad-monitor $rolesdir/juju4.win-ad-monitor

## don't stop build on this script return code
true

