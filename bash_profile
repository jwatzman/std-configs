# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# cabal-install
if [ -d "$HOME/.cabal/bin" ] ; then
	PATH="$HOME/.cabal/bin:$PATH"
fi

# 410
OSDIR="/afs/cs/academic/class/15410-f10/bin"
if [ -d "${OSDIR}" ]
then
	PATH="${OSDIR}:$PATH"
fi

# fink
if [ -r "/sw/bin/init.sh" ]
then
	source "/sw/bin/init.sh"
fi

export XTERMCMD=xterm
export AFSHOME=/afs/andrew/usr/jwatzman
export EDITOR=vim

export DEVKITPRO=$HOME/wii/devkitPRO
export DEVKITPPC=$DEVKITPRO/devkitPPC

unset GTK_IM_MODULE
unset QT_IM_MODULE
unset XMODIFIERS
