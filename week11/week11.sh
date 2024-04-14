#!/bin/bash

# Shell script for commands: more, nl, nice, passwd, pr, rlogin, rcp, rsh, talk, telnet, tput, tty, uname, wc, who, write

echo "Executing commands: more, nl, nice, passwd, pr, rlogin, rcp, rsh, talk, telnet, tput, tty, uname, wc, who, write"
echo "----------------------------------------------------------------------"

# Path to the file
file_path="$(dirname "$0")/file.txt"

# Path to the destination directory on the remote host (same as the script's directory)
destination_dir="$(dirname "$0")/"

# more
echo "more command example:"
more "$file_path"

# nl
echo "nl command example:"
nl "$file_path"

# nice
echo "nice command example:"
nice -n 10 ls

# passwd
echo "passwd command example:"
passwd

# pr
echo "pr command example:"
pr "$file_path"

# rlogin
echo "rlogin command example:"
rlogin 10.0.2.15

# rcp
echo "rcp command example:"
rcp "$file_path" 10.0.2.15:"$destination_dir"

# rsh
echo "rsh command example:"
rsh 10.0.2.15 command

# talk
echo "talk command example:"
talk user@10.0.2.15

# telnet
echo "telnet command example:"
telnet 10.0.2.15

# tput
echo "tput command example:"
tput cols

# tty
echo "tty command example:"
tty

# uname
echo "uname command example:"
uname -a

# wc
echo "wc command example:"
wc "$file_path"

# who
echo "who command example:"
who

# write
echo "write command example:"
write veerendra "$(tty)"

