#!/bin/sh
#
#


cd $(cd `dirname $0`; pwd)
read -p "当前状态"
git status
git add .
git commit -m Update
git push
read -p "按任意键继续"
