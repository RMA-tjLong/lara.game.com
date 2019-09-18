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
{{ $actionUrl }}
<br><br><br>
{{-- Salutation --}}
@if (! empty($salutation))
    {{ $salutation }}
@else
    {{ config('app.name') }}
@endif
