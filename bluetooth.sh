#!/usr/bin/expect -f

set prompt "#"
set address [lindex $argv 0]

spawn sudo bluetoothctl -a
expect -re $prompt
send "power on"
sleep 1
expect -re $prompt
send "quit\r"
expect eof