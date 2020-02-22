#!/usr/bin/env sh

echo '还原配置'

cd /Users/yangruihan/Workspace/Scripts/hosts

filename=hosts-`date +%Y-%m-%d_%H-%m-%S`

mv /etc/hosts backup/$filename
cp backup/hosts-raw /etc/hosts

echo "完成 备份配置 $filename"

cd -