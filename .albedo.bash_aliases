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

# To enable soft-wrap for nano text editor, enter the below command:
# "su -c "sed -i 's/# set softwrap/set softwrap/' /etc/nanorc"
# This will cause nano to softly wrap the lines, and when saving the file, the lines
# will not break.
# Will simply make the lines visibly multiple lines, while logically remaining a single
# line.


# Enable auto-set environment variable for $NANO_WRAP
env NANO_WRAP="$

# BEGIN SCRATCHBOARD DO NOT USE
# (in-progress) uncomment to enable auto-check for $NANO_WRAP environment variable
# if [[ -v ${NANO_WRAP} ]];
#     then
#     if $NANO_WRAP=
#
# echo "#!/bin/bash\function nano_wrap_check() {\    nano_wrap_pos=$[1,on,true,yes,y]\    
#
# env LAST_ERROR="$
# env ERROR_MESSAGE_TITLE="${SHELL}.${LAST_ERROR}.dump.txt"
# $ sh /etc/os-release; echo "$VERSION_CODENAME" > ~/tmp/${ERROR_MESSAGE_TITLE} \
#
# mail -s '${SHELL}.${LAST_ERROR}.dump.txt
#
# END SCRATCHBOARD
#

# scan for installed package manager(s) and set as environment variable



# To toggle soft-wrap for nano text editor, follow the below guidance:
# $ export $CURRENT_CODENAME="echo $

# enable color support of ls and also add handy aliases.
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"

    # automation for my preferred "apt upgrade" process.
    alias aupgr='apt autoremove -y && apt autoclean && apt update && apt full-upgrade -y'
fi

# automation for my preferred nala processes.

# "$CURRENT_CODENAME" is an environment variable set for referencing the current release code-name, as
# tied to the current release version for your flavor of linux (ONLY TESTED ON UBUNTU/DEBIAN DISTROS).
# tells nala to perform a "fetch" operation specifying current release as set by "ENV=$CURRENT_CODENAME",# instructing it to enable downloading packages as source, enabling the automatic selection of mirrors,
# and assumes yes in "y/n prompts".
    alias nala-fetch='nala fetch --ubuntu jammy --sources --auto -y'

# tells nala to perform an "update" operation specifying verbose  output.
    alias nala-update='nala update -v'

# tells nala to perform a full-upgrade style process including purging of unnecessary packages, bad or
# out of date sources, performing a "nala update" process with the installation of recommended packages
# and suggested packages; includes "-f, --fix-missing" and "-y, --assume-yes", and "-v, --verbose" flags.
    alias nala-uprgade='nala uprade --purge --full --update --autoremove --install-recommends --install-suggests -f -y -v'

# EOF//end.of.file
