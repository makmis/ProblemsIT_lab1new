#!/bin/bash
CHFN='which chfn'
CHSH='which chsh'
PASSWD='which passwd'

# chfn
echo -n "Change suid to capabilities for \"CHFN\"? (y/n) "
read item
if [ $item = y ];
then
	chmod u-s $CHFN
	setcap cap_chon,cap_setuid+ep $CHFN
fi

