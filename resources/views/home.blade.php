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
    <div class="row">
        <div class="col-md-8 col-md-offset-2">
            <div class="panel panel-default">
                <div class="panel-heading">Dashboard</div>

                <div class="panel-body">
                    You are logged in!
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
