```
 copyright https://mit-license.org
 File              : README.md
 Author            : chenxu <chenxu@mail.ustc.edu.cn>
 Date              : 6 2022-08-20 22:42:34
 Last Modified Date: 2 2022-08-23 12:00:39
 Last Modified By  : chenxu <chenxu@mail.ustc.edu.cn>
```

cp hosts.deny /etc/hosts.deny


for example:
every 2 hours

for some system you need admin permission
```
crontab -e
```
add this line
```
*/2 * * * /data02/chenxu/cdn/sh1_get.sh
```
