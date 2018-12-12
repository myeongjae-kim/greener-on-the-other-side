#!/bin/sh
echo "$(date)" >> log
USER=$1
PW=$2

git add -A
git commit -m "Daily commit"

expect <<EOF
set timeout 1
spawn git push
expect "Username for 'https://github.com':"
	send "$USER\r"
expect "Password for 'https://hrzon@github.com':"
	send "$PW\r"
expect eof
EOF
