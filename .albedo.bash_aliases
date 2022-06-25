# !/usr/bin/bash
# ~/albedo.bash_aliases: executed by bash(1) for non-login shells.
# to enable this aliases file, edit your ~/.bashrc file to include the following quoted
# command/string:
#
# "echo "\# enable the albedo.bash_aliases file \if [ -f ~/.albedo.bash_aliases ]; then\    . ~/.albedo.bash_aliases\fi\"
#
#
# alias definitions.
# see /usr/share/doc/bash-doc/examples in the bash-doc package.

# enable color support of ls and also add handy aliases.
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    # automation for my preferred "apt upgrade" process.
    alias aupgr='apt autoremove -y && apt autoclean && apt update && apt full-upgrade -y'
fi
