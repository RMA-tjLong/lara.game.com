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

        .news-block {
            margin-bottom: 16px;
        }
        .news-block .header {
            background: rgba( 255, 255, 255, 0.1);
            padding: 4px;
            color: var(--global-context-color);
            font-size: 12px;
            font-weight: normal;
        }
        .news-block .content {
            border: 1px solid rgba( 255, 255, 255, 0.1);
            border-radius: 2px;
            padding: 4px 2px 4px 4px;
            font-size: 12px;
        }
        .news-block .content .bar {
            padding-left: 12px;
            display: block;
            color: #9fbbcb!important;
            font-size: 13px;
            font-weight: normal;
            line-height: 28px;
            transition: color 0.5s;
        }
        .news-block .content .bar:hover {
            color: #fff!important;
        }
        .news-block .content .active {
            background: linear-gradient(135deg, #67c1f5 0%,#417a9b 100%);
            color: #fff!important;
            border-radius: 1px;
        }
        .news-block .content .sub-channel {
            font-size: 11px;
            color: var(--global-context-dark-color);
            margin-bottom: 4px;
            text-transform: uppercase;
            margin-top: 14px;
        }
        .news-block .content .sub-channel:first-of-type {
            margin-top: 0px;
        }
        .news-block .content a:not(.bar) {
            color: #B0AEAC!important;
            margin-right: 7px;
            word-break: keep-all;
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

                @slot('page_title', '所有新闻')
            @endcomponent

            @component('components.context-content')
                @slot('content')
                    <div id="news" class="col-xs-9"></div>

                    <div id="news-menu" class="col-xs-3">
                        <div class="news-block">
                            <div class="header">{{ __('language.news.channels') }}</div>
                            <div class="content">
                                <a class="bar" href="#">全部频道</a>
                                <a class="bar active" href="#">全部频道</a>
                                <a class="bar" href="#">全部频道</a>

                                <div class="sub-channel">{{ __('language.news.comprehensive_news') }}</div>
                                @foreach($news_tags['comprehensive'] as $tag)
                                    @if($tag['tag_titles']->count())
                                    <a class="bar" href="">{{ $tag['tag_titles'][0]->title }}</a>
                                    @endif
                                @endforeach
                            </div>
                        </div>

                        <div class="news-block">
                            <div class="header">存档</div>
                            <div class="content">
                                <div class="sub-channel">2019</div>
                                <a href="#">1月</a>
                                <a href="#">2月</a>
                                <a href="#">3月</a>
                                <a href="#">4月</a>
                                <a href="#">5月</a>
                                <a href="#">6月</a>
                                <a href="#">7月</a>
                                <a href="#">8月</a>
                                <a href="#">9月</a>
                                <a href="#">10月</a>
                                <a href="#">11月</a>
                                <a href="#">12月</a>

                                <div class="sub-channel">存档年份</div>
                                <a href="#">2019</a>
                                <a href="#">2018</a>
                                <a href="#">2017</a>
                                <a href="#">2016</a>
                                <a href="#">2015</a>
                                <a href="#">2014</a>
                                <a href="#">2013</a>
                                <a href="#">2012</a>
                                <a href="#">2011</a>
                                <a href="#">2010</a>
                                <a href="#">2009</a>
                            </div>
                        </div>
                    </div>
                @endslot
            @endcomponent
        </div>
    </div>
@endsection
