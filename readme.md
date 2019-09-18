简易配置： 安个wamp，composer，npm

composer绑定到wamp的php.exe上面，如果不能翻墙就设置一下composer中国镜像，把.env.local改为.env，运行一波redis，redis和mysql的密码设置了之后在.env里面改

执行命令
```
composer update

npm install

php artisan key:generate

// 开启队列
php artisan queue:work
```
不出意外就可以运行了，当然最好设置一下hosts文件并且在apache上挂个虚拟域名

我使用的是docker，详细配置见我的github项目有一个docker-compose
