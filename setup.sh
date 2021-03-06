#!/bin/bash

source aliases.sh
printf "${LIGHT_BLUE_TXT}Installing ROS-Hacks${NC}.\n"

echo "## ROS-HACKS entries ##" >>~/.bashrc
echo "source ${PWD}/aliases.sh" >>~/.bashrc
echo "source ${PWD}/functions.sh" >>~/.bashrc
echo "get_current_ws" >>~/.bashrc
echo 'source_ws $curr_ws' >>~/.bashrc
echo "## ROS-HACKS END ##" >>~/.bashrc
if [[ -f ~/.inputrc ]];then
	mv ~/.inputrc ~/.inputrc.bak
fi
ln -nsf ${PWD}/inputrc ~/.inputrc
