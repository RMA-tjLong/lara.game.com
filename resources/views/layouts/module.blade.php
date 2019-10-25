@extends('layouts.app')

@section('content')
    @if (session()->has('status'))
        @component('components.remind-successful')
            @slot('text', session()->pull('status'))
        @endcomponent
    @endif

    @include('public.left-tools')
    @include('public.footer')
@endsection
