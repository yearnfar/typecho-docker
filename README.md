# typecho-docker

typecho-docker只是一个能运行 typecho 的 php-fpm docker镜像。

如果要运行 typecho 博客，需要以下步骤：

1. 运行 typecho-docker 容器。。
2. 运行一个mysql数据库。
3. 把 typecho 代码挂载到 typecho-docker 容器中。
3. 使用 nginx 代理到 typecho-docker 映射的端口。

实际操作：

1. 运行 docker-compose.yml 文件，就完成了步骤1、2，
2. 然后复制代码到typecho-docker挂载的目录，并把挂载的目录权限设为777
3. nginx 配置文件也提供了，只需要把它放到nginx里面，并修改相应配置，重启 nginx 即可。

## typecho-docker 镜像特性：

1. 支持中文
2. 把apt默认源改成了科大源
3. 安装了typecho所需要的扩展

## php 设置

1. 安装 pdo_mysql 扩展
2. 开启 output_buffering

## docker-compose

1. 启动一个能运行typecho-docker容器，挂载外部代码到容器
2. 启动mysql容器

