# 用法
```
# init
docker run --rm -v "$PWD:/gitbook" -p 4000:4000 zhouqi/docker-gitbook gitbook init
# serve
docker run --rm -v "$PWD:/gitbook" -p 4000:4000 zhouqi/docker-gitbook gitbook serve
# build
docker run --rm -v "$PWD:/gitbook" -p 4000:4000 zhouqi/docker-gitbook gitbook build
```
# 添加命令的别名
```
alias gitbook='docker run --rm -v "$PWD":/gitbook -p 4000:4000 zhouqi/docker-gitbook gitbook'
# init
gitbook init
# serve
gitbook serve
# build
gitbook build
# pdf output
gitbook pdf .
```
