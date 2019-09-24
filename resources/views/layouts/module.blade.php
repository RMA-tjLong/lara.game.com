@extends('layouts.app')

@section('content')
    @if (session()->has('status'))
        @component('components.remind-successful')
            @slot('text')
                {{ session()->pull('status') }}
            @endslot
        @endcomponent
    @endif

    @yield('context')

    @include('public.left-tools')

    @component('components.footer')
        @slot('active')
            @yield('active')
        @endslot
    @endcomponent
@endsection
