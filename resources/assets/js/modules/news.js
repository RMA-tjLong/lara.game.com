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
                let res = data.data.data;
                if (data.status && res) {
                    let str = '';

                    res.forEach(function(item) {
                        str +=  '<div class="news-hr"></div>' +
                                '<div id="news_' + item.id + '">' +
                                    '<div class="news-list steam_announce">' +
                                        '<img class="capsule" src="' + item.games.head_img_url + '">' +
                                        '<div class="headline">' +
                                            '<div class="date">' + item.created_at + '</div>' +
                                            '<div class="news-title"><a href="javascript:void(0);">' + item.title + '</a></div>' +
                                        '</div>' +
                                        '<div class="feed">' + item.games.name + ' - ' + item.author + '</div>' +
                                        '<div style="clear: both;"></div>' +
                                        '<div class="body body-fold">' + item.content + '</div>' +
                                        assemble_share('https://store.steampowered.com/news/55388/', 'Daily+Deal+-+Shortest+Trip+to+Earth%2C+33%25+Off\'') +
                                        '<div style="clear: both;"></div>' +
                                    '</div>' +
                                '</div>';
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
