#!/bin/bash

cd /home/yinyunlong/person/go_workspace/new-api || exit
# 2. 查看简短状态
git status -s

# 3. 暂存所有更改
git add *

# 4. 动态获取 commit 信息
# 如果执行命令为 `./git_main.sh abc`，则 MSG 的值为 "abc"
# 如果执行命令为 `./git_main.sh`，则 MSG 的值默认为 "u"
MSG=${1:-'u'}

# 5. 提交并推送到远程仓库
git commit -m "$MSG"
git push origin yyl_dev