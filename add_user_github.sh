#!/bin/bash

if [ -z $1 ]; then
	echo "Usage: $0 <github_username>"
	echo
	exit 1
fi

new_user=$1

sudo adduser -q --disabled-password --gecos $new_user $new_user
sudo usermod -aG sudo $new_user
sudo echo "$new_user ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/$new_user && sudo chmod 440 /etc/sudoers.d/$new_user
sudo su -c "mkdir -p /home/$new_user/.ssh && wget -O /home/$new_user/.ssh/authorized_keys https://github.com/$new_user.keys" $new_user
