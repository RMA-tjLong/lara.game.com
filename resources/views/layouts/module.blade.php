@extends('layouts.app')

@section('content')
    @if (session()->has('status'))
        @component('components.remind-successful')
            @slot('text')
                {{ session()->pull('status') }}
            @endslot
        @endcomponent
    @endif


    @include('public.left-tools')

    @component('components.footer')
        @slot('active')
            {{ $entityCode }}
        @endslot
    @endcomponent
@endsection
