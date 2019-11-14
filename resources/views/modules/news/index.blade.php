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
                    <a href="#">所有产品</a> &gt;
                    <a href="#">新闻</a>
                @endslot

                @slot('page_title', $page_title)
            @endcomponent

            @component('components.context-content')
                @slot('content')
                    <div id="news" class="col-xs-9"></div>

                    <div id="news-menu" class="col-xs-3">
                        <div class="filters-block">
                            <div class="header">{{ __('language.news.channels') }}</div>
                            <div class="content">
                                <a class="bar @if (!request()->query('tag')) active @endif" href="{{ route('news.index') }}">{{ __('language.news.all') }}</a>
                                @if ($news_tags['normal'])
                                    @foreach ($news_tags['normal'] as $tag)
                                        @if ($tag['relate_news_tag_titles']->count())
                                        <a class="bar @if ($tag->code == request()->query('tag')) active @endif"
                                           href="{{ route('news.index', array_merge(request()->query(), ['tag' => $tag->code])) }}"
                                        >{{ $tag['relate_news_tag_titles'][0]->title }}</a>
                                        @endif
                                    @endforeach
                                @endif

                                @if ($news_tags['comprehensive'])
                                    <div class="sub-channel">{{ __('language.news.comprehensive_news') }}</div>
                                    @foreach ($news_tags['comprehensive'] as $tag)
                                        @if ($tag['relate_news_tag_titles']->count())
                                        <a class="bar @if ($tag->code == request()->query('tag')) active @endif"
                                           href="{{ route('news.index', array_merge(request()->query(), ['tag' => $tag->code])) }}"
                                        >{{ $tag['relate_news_tag_titles'][0]->title }}</a>
                                        @endif
                                    @endforeach
                                @endif
                            </div>
                        </div>

                        <div class="filters-block">
                            @component('components.filter-by-archives')
                                @slot('route_name', 'news.index')
                            @endcomponent
                        </div>
                    </div>
                @endslot
            @endcomponent
        </div>
    </div>
@endsection
