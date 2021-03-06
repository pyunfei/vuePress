#!/usr/bin/env sh 

# 确保脚本抛出遇到的错误 
set -e 

# 生成静态文件 
npm run docs:build 

# 如果是发布到自定义域名
# echo 'www.pengyunfei.top' > CNAME

# 进入生成的文件夹 
cd docs/.vuepress/blog 
git init 
git add -A 
git commit -m 'deploy' 

# 如果发布到 https://<USERNAME>.github.io 填写创建的仓库地址 
git push -f https://github.com/pyunfei/pyunfei.github.io.git master 

cd -
