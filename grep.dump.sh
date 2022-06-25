#!/bin/bash

# set an environment variable for the directory
# we want to store the grep results into.
export GREP_DUMP_DIR="/home/volian-team/maintainers.grep.dumps"

# create directory for maintainers grep dumps in a logical location.
mkdir -pv $GREP_DUMP_DIR

# recursively search the "/etc/apt" directory for all files containing the string
# "maint"; then redirect stdio to our "maintainers.txt" file below:
#
# "/home/volian-team/maintainers.grep.dumps/maintainers.txt".
grep -R -i -C 3 "maint" /etc/apt/* > $GREP_DUMP_DIR/maintainers.txt

# print to screen the contents of the maintainers dump file.
cat ${GREP_DUMP_DIR}/maintainers.txt
