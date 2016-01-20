#!/bin/bash

# chfn
chmod u-s /usr/bin/chfn
setcap cap_chown,cap_setuid+ep /usr/bin/chfn

# chsh
chmod u-s /usr/bin/chsh
setcap cap_chown,cap_setuid+ep /usr/bin/chsh

# passwd
chmod u-s /usr/bin/passwd
setcap cap_chown,cap_dac_override,cap_fowner+ep /usr/bin/passwd
