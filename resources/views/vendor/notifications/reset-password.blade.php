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
{{ config('app.name') }}
