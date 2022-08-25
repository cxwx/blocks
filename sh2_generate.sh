# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    sh2_generate.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chenxu <chenxu@mail.ustc.edu.cn>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/23 12:01:57 by chenxu            #+#    #+#              #
#    Updated: 2022/08/25 15:30:54 by chenxu           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

lastb |awk '{print $3}' |grep "\." |sort |uniq |awk '{printf ("ALL: %s\n", $1)}'>newblock
cat newblock hosts.deny |uniq >allblock
mv allblock hosts.deny
rm newblock
cp hosts.deny /etc/hosts.deny
msg=`date --iso-8601=seconds`
git commit -a -m "${msg}"
git push
