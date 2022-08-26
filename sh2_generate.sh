# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    sh2_generate.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chenxu <chenxu@mail.ustc.edu.cn>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/23 12:01:57 by chenxu            #+#    #+#              #
#    Updated: 2022/08/26 16:37:16 by chenxu           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

git pull
lastb |awk '{print $3}' |grep "\." |sort |uniq |awk '{printf ("ALL: %s\n", $1)}'>newblock
cat newblock hosts.deny |sort |uniq >allblock
mv allblock hosts.deny
rm newblock
cp hosts.deny /etc/hosts.deny
msg=`date --iso-8601=seconds`
git commit -a -m "${msg}"
git push
