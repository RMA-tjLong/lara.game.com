@extends('layouts.app')

@section('content')
    @if (session()->has('status'))
        @component('components.remind-successful')
            @slot('text')
                {{ session()->pull('status') }}
            @endslot
        @endcomponent
    @endif

    <div class="container">
    </div>

    @component('components.footer')
        @slot('active')
            shop
        @endslot
    @endcomponent
@endsection
