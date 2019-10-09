@extends('layouts.module')
@section($entityCode . '.active', 'active')
@section('styles')
    @parent
    <style>
    </style>
@endsection

@section('content')
	@parent
    <div id="context">
        <div class="container">
            @component('components.context-header')
                @slot('bread_crumbs')
                    <a href="#">所有产品</a> &gt;
                    <a href="#">新闻</a>
                @endslot

                @slot('page_title')
                    所有新闻
                @endslot
            @endcomponent


        </div>
    </div>
@endsection

@section('scripts')
    @parent
@endsection
