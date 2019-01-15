#!/bin/sh
#
#


cd $(cd `dirname $0`; pwd)
@pause
git status
@pause
git add .
git commit -m Update
@pause
git push
@pause
