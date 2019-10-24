@extends('layouts.module')
@section($entityCode . '.active', 'active')
@section('styles')
    @parent
    <style>
        .newshr {
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
            color: var(--global-context-color)!important;
            margin-top: 10px;
            line-height: 19px;
            clear: left;
            margin-bottom: 10px;
            font-size: 14px;
            font-weight: 300;
        }
        .news-list .body img {
            clear: both;
            margin-right: 12px;
            margin-top: 8px;
            max-width: 536.25px;
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
                        <div class="newshr"></div>
                        <div id="news_[序号]">
                            <div class="news-list steam_announce">
                                <img class="capsule" src="[游戏抬头缩略图]">
                                <div class="headline">
                                    <div class="date">[发布时间]</div>
                                    <div class="news-title"><a href="https://xxx/news/[跳转id]/">[标题]测试长度测试长度测试长度测试长度测试长度</a></div>
                                </div>

                                <div class="feed">[游戏名称] - [新闻作者]</div>

                                <div class="body">
                                    [用户自定的富文本编辑的内容]测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度测试长度 <br> <a href=""><img src="https://steamcdn-a.akamaihd.net/steam/apps/812040/capsule_467x181.jpg"></a>
                                </div>

                                @component('components.share')
                                    @slot('url', 'https://store.steampowered.com/news/55388/')
                                    @slot('title', 'Daily+Deal+-+Shortest+Trip+to+Earth%2C+33%25+Off')
                                @endcomponent
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-3" style="border: 1px solid #f0f; height: 300px;"></div>
                @endslot
            @endcomponent
        </div>
    </div>
@endsection

@section('scripts')
    @parent
@endsection
