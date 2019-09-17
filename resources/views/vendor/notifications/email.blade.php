{{-- Intro Lines --}}
@foreach ($introLines as $line)
{{ $line }}
<br><br>
@endforeach
{{-- Outro Lines --}}
@foreach ($outroLines as $line)
{{ $line }}
<br><br>
@endforeach
{{-- Subcopy --}}
@isset($actionText)
{{ __('language.email.resetpw_notification_3rd_line') }}
<br><br>
{{ $actionUrl }}
<br><br><br>
@endisset
{{-- Salutation --}}
@if (! empty($salutation))
    {{ $salutation }}
@else
    {{ config('app.name') }}
@endif
