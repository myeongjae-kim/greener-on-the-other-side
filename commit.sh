#!/bin/sh
# $USER and $PW must be declared out of this script
echo "$(date)" >> log
git add -A
git commit -m "Daily commit"

expect <<EOF
set timeout 3
spawn git push
expect "Username for 'https://github.com':"
	send "$__GIT_USER__\r"
expect "Password for 'https://hrzon@github.com':"
	send "$__GIT_PW__\r"
expect eof
EOF
