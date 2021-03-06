# Firejail profile for font-manager
# Description: A simple font management application for GTK desktop environments
# This file is overwritten after every install/update
# Persistent local customizations
include font-manager.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.cache/font-manager
noblacklist ${HOME}/.config/font-manager

# Allow python (blacklisted by disable-interpreters.inc)
noblacklist ${PATH}/python2*
noblacklist ${PATH}/python3*
noblacklist /usr/lib/python2*
noblacklist /usr/lib/python3*

include disable-common.inc
include disable-devel.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.cache/font-manager
mkdir ${HOME}/.config/font-manager
whitelist ${HOME}/.cache/font-manager
whitelist ${HOME}/.config/font-manager
include whitelist-common.inc

apparmor
caps.drop all
machine-id
net none
no3d
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog

disable-mnt
private-bin font-manager,python*,yelp
private-dev
private-tmp

#memory-deny-write-execute - Breaks on Arch
noexec ${HOME}
noexec /tmp
