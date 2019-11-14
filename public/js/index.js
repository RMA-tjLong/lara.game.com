const SearchTool = {
    'element'   : $('#left-tools .search-tool'),
    'events'    : ['click'],

    'clickListener' : function () {
        this.element.on('click', function() {
            if ($(this).hasClass('active')) {
                $(this).removeClass('active');
            } else {
                $(this).addClass('active');
            }
        });
    }
};

const SearchBox = {
    'element'   : $('#left-tools .search-tool .search-box'),
    'events'    : ['click'],

    'clickListener' : function() {
        this.element.on('click',function(e) {
            e.stopPropagation();
        });
    }
};

const LeftTools = {
    'elements' : [
        SearchTool,
        SearchBox
    ]
};

const NewsTitle = {
    'eleStr'    : '#news .news-list .headline .news-title',
    'element'   : $('#news .news-list .headline .news-title'),
    'events'    : ['click'],

    'clickListener' : function () {
        $(document).delegate(NewsTitle.eleStr, 'click', function () {
            $(this).parents('.news-list').find('.body-fold').removeClass('body-fold');
        });
    }
};

const NewsContext = {
    'element'   : $('#context[news-context]'),
    'events'    : ['scroll'],

    'scrollListener' : function() {
        let page = 1;
        NewsContext.load(page);
        this.element.on('scroll', function() {
            if ($(this).scrollTop() >= $(this).prop('scrollHeight') - $(this).height()) {
                NewsContext.load(++page);
            }
        });
    },

    'load'          : function(page) {
        $.ajax({
            url         : $.compileTemplateRoute().apis.news,
            type        : 'GET',
            data        : {
                'lang'  : $.parseParams($('script[src]')[$('script[src]').length - 1].src).lang,
                'page'  : page
            },
            dataType    : 'json',
            success     : function(data) {
                if (!data.status) return false;

                let res = data.data.data;

                if (res.length) {
                    let str = '';

                    res.forEach(function(item) {
                        if (!item.relate_games || !item.relate_games.relate_game_titles.length || !item.relate_news_contents.length || !item.relate_news_titles.length) {
                            return false;
                        }

                        str +=  '<div class="news-hr"></div>' +
                                '<div id="news_' + item.id + '">' +
                                    '<div class="news-list">' +
                                        '<img class="capsule" src="' + item.relate_games.head_img_url + '">' +
                                        '<div class="headline">' +
                                            '<div class="date">' + item.created_at + '</div>' +
                                            '<div class="news-title"><a href="javascript:void(0);">' + item.relate_news_titles[0].title + '</a></div>' +
                                        '</div>' +
                                        '<div class="feed">' + item.relate_games.relate_game_titles[0].title + ' - ' + item.author + '</div>' +
                                        '<div style="clear: both;"></div>' +
                                        '<div class="body body-fold">' + item.relate_news_contents[0].content + '</div>' +
                                        $.compileTemplateShare(item.id, item.relate_news_titles[0].title) +
                                        '<div style="clear: both;"></div>' +
                                    '</div>' +
                                '</div>';
                    });

                    NewsContext.element.find('#news').append(str);
                } else {
                    NewsContext.element.off('scroll');
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

const elements = [News, LeftTools];

elements.forEach(function(module) {
    module.elements.forEach(function(item) {
        item.events.forEach(function(event) {
            item[event + 'Listener']();
        });
    });
});
