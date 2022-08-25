# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    sh2_generate.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chenxu <chenxu@mail.ustc.edu.cn>           +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/23 12:01:57 by chenxu            #+#    #+#              #
#    Updated: 2022/08/23 12:05:33 by chenxu           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

lastb |awk '{print $3}' |grep "\." |sort |uniq |awk '{printf ("ALL: %s\n", $1)}'>newblock
cat newblock hosts.deny |uniq >allblock
mv allblock hosts.deny
cp hosts.deny /etc/hosts.deny
