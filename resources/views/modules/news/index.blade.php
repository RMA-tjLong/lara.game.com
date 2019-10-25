@extends('layouts.module')
@section($entityCode . '.active', 'active')
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
    <div id="context">
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
                    <div id="news" class="col-xs-9">
                        <div class="news-hr"></div>
                        <div id="news_[序号]">
                            <div class="news-list steam_announce">
                                <img class="capsule" src="[游戏抬头缩略图]">
                                <div class="headline">
                                    <div class="date">[发布时间]</div>
                                    <div class="news-title"><a href="javascript:void(0);">[标题]测试长度测试长度</a></div>
                                </div>
                                <div class="feed">[游戏名称] - [新闻作者]</div>
                                <div style="clear: both;"></div>
                                <div class="body body-fold">
                                    [用户自定的富文本编辑的内容]测试长度测试长度测试长度测试
                                    长度测试长度测试长度测试长度测试长度测试长度测试长度测试
                                    长度测试长度测试长度测试长度测试长度测试长度测试长度测试
                                    长度测试长度测试长度测试长度测试长度测试长度测试长度测试
                                    长度测试长度测试长度测试长度测试长度
                                    <br>
                                    <img src="https://steamcdn-a.akamaihd.net/steam/apps/812040/capsule_467x181.jpg">
                                    <br>
                                    [用户自定的富文本编辑的内容]测试长度测试长度测试长度测试
                                    长度测试长度测试长度测试长度测试长度测试长度测试长度测试
                                    长度测试长度测试长度测试长度测试长度测试长度测试长度测试
                                    长度测试长度测试长度测试长度测试长度测试长度测试长度测试
                                    长度测试长度测试长度测试长度测试长度
                                </div>
                                @component('components.share')
                                    @slot('url', 'https://store.steampowered.com/news/55388/')
                                    @slot('title', 'Daily+Deal+-+Shortest+Trip+to+Earth%2C+33%25+Off')
                                @endcomponent
                                <div style="clear: both;"></div>
                            </div>
                        </div>
                    </div>

                    <div id="news-menu" class="col-xs-3">
                        <div class="news-block">
                            <div class="header">频道</div>
                            <div class="content">
                                <a class="bar" href="#">全部频道</a>
                                <a class="bar active" href="#">全部频道</a>
                                <a class="bar" href="#">全部频道</a>

                                <div class="sub-channel">综合新闻</div>
                                <a class="bar" href="#">全部频道</a>
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

@section('scripts')
    @parent
@endsection
