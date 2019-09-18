简易配置： 安个wamp，composer，npm

composer绑定到wamp的php.exe上面，如果不能翻墙就设置一下composer中国镜像，执行命令
```
composer update

npm install

php artisan key:generate
```
不出意外就可以运行了，当然最好设置一下hosts文件并且在apache上挂个虚拟域名

我使用的是docker，详细配置见我的github项目有一个docker-compose