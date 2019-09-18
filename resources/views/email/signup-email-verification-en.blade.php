Hey {{ $data['name'] }}
<br><br>
A sign in attempt requires further verification because we did not recognize your device. To complete the sign in, click the link for verification on the unrecognized device
<br><br>
Verification link: <a href="{{ $data['verification_link'] }}" target="_blank">{{ $data['verification_link'] }}</a>
<br><br>
If you did not attempt to sign in to your account, your password may be compromised
<br><br>
For more information, see <a href="{{ $data['about_link'] }}" target="_blank">{{ $data['about_link'] }}</a>
<br><br><br>
Thanks,
<br>
Your friends at {{ $data['app_name'] }}
<br>