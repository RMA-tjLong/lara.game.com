@extends('layouts.module')
@section($entity_code . '.active', 'active')
@section('styles')
    @parent
    <style>
        .news-hr {
            height: 1px;
            width: 100%;
            clear: left;
            background-image: url({{ asset('image/default/maincol_gradient_rule.png') }});
            background-repeat: no-repeat;
            background-position: top left;
        }
        .news-list {
            margin: 10px 0;
        }
        .news-list .headline {
            margin-bottom: 2px;
        }
        .news-list .capsule {
            float: left;
            width: 120px;
            height: 50px;
            margin-right: 8px;
        }
        .news-list .headline .news-title {
            font-size: 22px;
            max-width: 560px;
            line-height: 25px;
            font-weight: 300;
        }
        .news-list .headline .date {
            float: right;
            color: var(--global-context-dark-color);
            clear: right;
            margin-top: 2px;
            margin-left: 15px;
        }
        .news-list .feed {
            color: var(--global-context-dark-color);
            height: 14px;
        }
        .news-list .body {
            color: var(--global-context-color);
            margin-top: 10px;
            line-height: 19px;
            clear: left;
            margin-bottom: 10px;
            font-size: 14px;
            font-weight: 300;
        }
        .news-list .body-fold {
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 6;
            overflow-y: hidden;
        }
        .news-list .body img {
            clear: both;
            margin-right: 12px;
            margin-top: 8px;
            margin-bottom: 8px;
            max-width: 536.25px;
        }
    </style>
@endsection

@section('content')
	@parent
    <div id="context" news-context>
        <div class="container">
            @component('components.context-header')
                @slot('bread_crumbs')
                    <a href="{{ route('shop.index') }}">{{ __('language.common.home') }}</a> &gt;
                    <a href="{{ route('news.index') }}">{{ __('language.news.news') }}</a>
                    @if ($game_title) > <a href="{{ route('news.index', $param_game_id) }}">{{ $game_title }}</a> @endif
                @endslot

                @slot('page_title', $page_title)
            @endcomponent

            @component('components.context-content')
                @slot('content')
                    <div id="news" class="col-xs-9"></div>

                    <div id="news-menu" class="col-xs-3">
                        @include('modules.news.news-filters-menu')
                    </div>
                @endslot
            @endcomponent
        </div>
    </div>
@endsection
