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
if [ -d "$HOME/Library/Haskell/bin" ] ; then
	PATH="$HOME/Library/Haskell/bin:$PATH"
fi

if [ -d "$HOME/.npm-global" ] ; then
	PATH="$HOME/.npm-global/bin:$PATH"
fi

# 410
#OSDIR="/afs/cs/academic/class/15410-f10/bin"
#if [ -d "${OSDIR}" ]
#then
	#PATH="${OSDIR}:$PATH"
#fi

# fink
if [ -r "/sw/bin/init.sh" ]
then
	source "/sw/bin/init.sh"
fi

# macports
if [ -d "/opt/local/var/macports" ]
then
	export PATH=/opt/local/bin:/opt/local/sbin:$PATH
	export MANPATH=/opt/local/share/man:$MANPATH

	if [ -f "/opt/local/etc/bash_completion" ]
	then
		. /opt/local/etc/bash_completion
	fi
fi

# homebrew
if [ -d "$HOME/homebrew" ]
then
	eval "$($HOME/homebrew/bin/brew shellenv)"
	#export HOMEBREW_BUILD_FROM_SOURCE=1
	export HOMEBREW_VERBOSE=1
fi

export XTERMCMD=uxterm
export AFSHOME=/afs/andrew/usr/jwatzman
export EDITOR=vim

export DEVKITPRO=$HOME/wii/devkitPRO
export DEVKITPPC=$DEVKITPRO/devkitPPC

export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
unset XMODIFIERS

export UNISONLOCALHOSTNAME='charybdis.local'

export BASH_SILENCE_DEPRECATION_WARNING=1
