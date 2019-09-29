@extends('layouts.module')
@section($entityCode . '.active', 'active')
@section('style')
    @parent
    <style>
    </style>
@endsection

@section('content')
	@parent
    <div id="context">
        <div class="container">
            <div class="row">
                <div class="context-header">
                    <div class="bread-crumbs">
                        <a href="#">所有产品</a> &gt;
                        <a href="#">新闻</a>
                    </div>
                    <h1 class="page-title">所有新闻</h1>
                </div>
            </div>

        </div>
    </div>
@endsection
