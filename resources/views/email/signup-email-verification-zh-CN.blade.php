你好 {{ $data['name'] }}
<br><br>
尝试中的登陆需要进一步验证，因为我们不能识别您的设备。为了完成登录，请单击下面的链接来进行验证
<br><br>
验证链接： <a href="{{ $data['verification_link'] }}" target="_blank">{{ $data['verification_link'] }}</a>
<br><br>
如果您不尝试验证登陆, 您的密码可能被泄露
<br><br>
如果要查看更多关于我们的信息，请点击 <a href="{{ $data['about_link'] }}" target="_blank">{{ $data['about_link'] }}</a>
<br><br><br>
谢谢，
<br>
您的朋友 {{ $data['app_name'] }}
<br>