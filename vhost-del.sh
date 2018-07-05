#!/bin/bash

CONF="/etc/apache2/sites-available/$1.conf"

if [ -f $FILE ];
then
  a2dissite $1
  rm $CONF
  service apache2 reload
  echo "apache clean removed $1"
else
   echo "$1 does not exist."
fi

echo "Done!, you will need to manually delete /var/vhosts/$1"
