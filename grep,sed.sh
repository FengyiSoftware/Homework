#!/usr/bin/env bash
grep -n 'San' grepdata.txt
grep -n '^J' grepdata.txt
grep -n '700$' grepdata.txt
grep -vn '834' grepdata.txt
grep -n '[A-Z][a-z]\{4\}:' grepdata.txt
grep -n ':[0-9]\{6\}$' grepdata.txt
grep -ni '[Ll]incoln' grepdata.txt

cat grepdata.txt | sed 's/Jon/Jonathon/g'
cat grepdata.txt | sed '1,3d'
cat grepdata.txt | sed -n '5,10p'
cat grepdata.txt | sed 's/^.*Lane.*$//g' | sed '/^$/d'
cat grepdata.txt | sed 's/^Fred/\***Fred/p'
cat grepdata.txt | sed 's/^.*Jose.*$/JOSE HAS RETIRED/p'
cat grepdata.txt | sed '/^$/d'

#useradd userA
#passwd 123
#visudo -f /etc/sudoers    :100
#userA  ALL=(ALL)  NOPASSWD:ALL
#SUID :  用户拥有SUID权限,当执行可执行文件时,可以拥有和文件拥有者相同的权限
#find / -perm -u=s

