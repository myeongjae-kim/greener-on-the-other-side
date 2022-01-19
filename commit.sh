#!/bin/sh
echo "$(date)" >> log
USER=$1
PW=$2

git add -A
git commit -m "Daily commit"

expect <<EOF
set timeout 10
spawn git push
expect "Username for 'https://github.com':"
	send "$USER\r"
expect "Password for 'https://($USER)@github.com':"
	send "$PW\r"
expect eof
EOF

text="[Greener] Pushed 1 commit. Return: $?"
curl $SLACK_WEBHOOK \
  -X 'POST' \
  -H 'Content-Type: application/json' \
  -d "{\"text\": \"$text\"}"
