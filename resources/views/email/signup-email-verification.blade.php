{{ __('language.email.verified_1st_line') }} {{ $data['name'] }}
<br><br>
{{ __('language.email.verified_2nd_line') }}
<br><br>
{{ __('language.email.verified_3rd_line') }} <a href="{{ $data['verification_link'] }}" target="_blank">{{ $data['verification_link'] }}</a>
<br><br>
{{ __('language.email.verified_4th_line') }}
<br><br>
{{ __('language.email.verified_5th_line') }} <a href="{{ $data['about_link'] }}" target="_blank">{{ $data['about_link'] }}</a>
<br><br><br>
{{ __('language.email.verified_6th_line') }}
<br>
{{ __('language.email.verified_7th_line') }} {{ $data['app_name'] }}
<br>