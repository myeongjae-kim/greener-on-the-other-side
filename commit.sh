#!/bin/sh
echo "$(date)" >> log
USER=$1
PW=$2

git add -A
git commit -m "Daily commit"

expect <<EOF
set timeout 3
spawn git push
expect "Username for 'https://github.com':"
	send "$USER\r"
expect "Password for 'https://$(USER)@github.com':"
	send "$PW\r"
expect eof
EOF
