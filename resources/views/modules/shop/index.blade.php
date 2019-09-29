@extends('layouts.module')
@section($entityCode . '.active', 'active')
@section('style')
@endsection

@section('content')
	@parent
    <div id="context">
        <div class="container">
        </div>
    </div>
@endsection
