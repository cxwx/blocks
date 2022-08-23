#!/bin/bash
# copyright https://mit-license.org
# File              : sh1_set.sh
# Author            : chenxu <chenxu@mail.ustc.edu.cn>
# Date              : 6 2022-08-20 22:50:15
# Last Modified Date: 6 2022-08-20 22:50:15
# Last Modified By  : chenxu <chenxu@mail.ustc.edu.cn>

USER1=chenxu
apt install -y git
git clone https://github.com/cxwx/blocks
echo change password and create new user now!!!!
cp sshd_config /etc/ssh/sshd_config
chmod 644 /etc/ssh/sshd_config
cp hosts.deny /etc/hosts.deny
chmod 644 /etc/hosts.deny
cp -r /root/.ssh /home/${USER1}
chown -R /home/${USER1}/.ssh
