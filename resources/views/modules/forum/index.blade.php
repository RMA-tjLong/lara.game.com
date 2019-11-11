@extends('layouts.module')
@section($entity_code . '.active', 'active')
@section('styles')
@endsection

@section('content')
	@parent
    <div id="context">
        <div class="container">
        </div>
    </div>
@endsection
