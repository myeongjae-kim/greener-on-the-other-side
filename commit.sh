#!/bin/sh
# $USER and $PW must be declared out of this script
echo "$(date)" >> log
git add -A
git commit -m "Daily commit"

echo "$PW"

expect <<EOF
set timeout 3
spawn git push
expect "Username for 'https://github.com':"
	send "$USER\r"
expect "Password for 'https://hrzon@github.com':"
	send "$PW\r"
expect eof
EOF
