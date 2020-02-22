#!/usr/bin/env sh

echo '更新Hosts配置'

cd /Users/yangruihan/Workspace/Scripts/hosts
git pull remote master:master

echo '更新Hosts完毕'

echo '切换Hosts'

cat host_template > temp
cat hosts-files/hosts > temp

filename=hosts-`date +%Y-%m-%d_%H-%m-%S`

mv /etc/hosts backup/$filename
mv temp /etc/hosts

echo "完成 备份配置 $filename"

cd -