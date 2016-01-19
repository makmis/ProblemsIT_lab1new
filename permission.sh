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

# chsh
echo -n "Change suid to capabilities for \"$CHSH\"? (y/n) "
read item
if [$item = y ];
then
        chmod u-s $CHSH
        setcap cap_chown,cap_setuid+ep $CHSH
fi

# passwd
echo -n "Change suid to capabilities for \"PASSWD\"? (y/n) "
read item
if [$item = y ];
then
        chmod u-s $PASSWD
        setcap cap_chown,cap_dac_override,cap_fowner+ep $PASSWD
fi
