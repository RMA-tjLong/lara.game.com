简易配置： 安个wamp，composer，npm

composer绑定到wamp的php.exe上面，如果不能翻墙就设置一下composer中国镜像，把.env.local改为.env，运行一波redis，redis和mysql的密码设置了之后在.env里面改

需要redis，网上下个redis for windows，安装一下，在根目录的redis.windows-service.conf的requirepass可以设置密码，然后在windows的 服务 里面开启redis开机启动

执行命令
```
composer update
如果在windows下报错缺少 ext-pcntl 扩展，使用 composer update --ignore-platform-reqs 进行更新

npm install

php artisan key:generate

开启队列（可选，不开启则影响验证等邮件发送的功能）
php artisan queue:work
```
不出意外就可以运行了，当然最好设置一下hosts文件并且在apache上挂个虚拟域名

我使用的是docker，详细配置见我的github项目有一个docker-compose


【

composer install

删除数据表 roles user_roles

删除对应的migrations文件

php artisan cache:clear

php artisan migrate

】
