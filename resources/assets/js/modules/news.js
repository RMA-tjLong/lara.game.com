const NewsTitle = {
    'element'   : $('#news .news-list .headline .news-title'),
    'events'    : ['click'],

    'clickListener' : function () {
        this.element.on('click', function () {
            $(this).parents('.news-list').find('.body-fold').removeClass('body-fold');
        });
    }
};

const NewsContext = {
    'element'   : $('#context[news-context]'),
    'events'    : ['scroll'],

    'scrollListener' : function() {
        NewsContext.load();
        this.element.scroll(function() {
            if ($(this).scrollTop() >= $(this).prop('scrollHeight') - $(this).height()) {
                NewsContext.load();
            }
        });
    },

    'load'          : function() {
        $.ajax({
            url         : typeof api_news !== 'undefined' ? api_news : '',
            type        : 'GET',
            dataType    : 'json',
            success     : function(data) {
                if (data.status && data.data) {
                    let str = '';

                    data.data.forEach(function(item) {
                        str += '<div class="news-hr"></div>';
                        str += '<div id="news_' + item.id + '">';
                        str += '<div class="news-list steam_announce">';
                        str += '<img class="capsule" src="[游戏抬头缩略图]">';
                        str += '<div class="headline">
                        //             <div class="date">[发布时间]</div>
                        //             <div class="news-title"><a href="javascript:void(0);">[标题]测试长度测试长度</a></div>
                        //         </div>
                        //         <div class="feed">[游戏名称] - [新闻作者]</div>
                        //         <div style="clear: both;"></div>
                        //         <div class="body body-fold">asdasdasd</div>
                        //         <div class="share">
                        //             分享：
                        //             <a href="http://www.facebook.com/sharer.php?u={{ $url }}&t={{ $title }}" target="_blank" title="{{ __('language.share.share_to') }} Facebook"><img src="{{ asset('image/icons/facebook.gif') }}"></a>
                        //             <a href="https://twitter.com/intent/tweet?url={{ $url }}&text={{ $title }}" target="_blank" title="{{ __('language.share.share_to') }} Twitter"><img src="{{ asset('image/icons/twitter.gif') }}"></a>
                        //             <a href="http://service.weibo.com/share/share.php?url={{ $url }}&title={{ $title }}" target="_blank" title="{{ __('language.share.share_to') }} 新浪微博"><img src="{{ asset('image/icons/sina.gif') }}"></a>
                        //             <a href="https://plus.google.com/share?url={{ $url }}" target="_blank" title="{{ __('language.share.share_to') }} Google+"><img src="{{ asset('image/icons/google.gif') }}"></a>
                        //         </div>
                        //         <div style="clear: both;"></div>
                        //     </div>
                        // </div>
                        str += '';
                    });

                    NewsContext.element.find('#news').append(str);
                }
            }
        });
    }
};

const News = {
    'elements' : [
        NewsTitle,
        NewsContext,
    ]
};
