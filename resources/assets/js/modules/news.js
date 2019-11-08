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
        let page = 1;
        NewsContext.load(page);
        this.element.on('scroll', function() {
            if ($(this).scrollTop() >= $(this).prop('scrollHeight') - $(this).height()) {
                NewsContext.load(++page);
            }
        });
    },

    'scrollOff'     : function() {
        this.element.off('scroll');
    },

    'load'          : function(page) {
        $.ajax({
            url         : typeof news_api_url !== 'undefined' ? news_api_url : '',
            type        : 'GET',
            data        : {
                'lang'  : $.parseParams($('script[src]')[$('script[src]').length - 1].src),
                'page'  : page
            },
            dataType    : 'json',
            success     : function(data) {
                if (!data.status) return false;

                let res = data.data.data;

                if (res.length) {
                    let str = '';

                    res.forEach(function(item) {
                        str +=  '<div class="news-hr"></div>' +
                                '<div id="news_' + item.id + '">' +
                                    '<div class="news-list steam_announce">' +
                                        '<img class="capsule" src="' + item.games.head_img_url + '">' +
                                        '<div class="headline">' +
                                            '<div class="date">' + item.created_at + '</div>' +
                                            '<div class="news-title"><a href="javascript:void(0);">' + item.titles[0].title + '</a></div>' +
                                        '</div>' +
                                        '<div class="feed">' + item.games.game_titles[0].title + ' - ' + item.author + '</div>' +
                                        '<div style="clear: both;"></div>' +
                                        '<div class="body body-fold">' + item.contents[0].content + '</div>' +
                                        $.assembleShare(item.id, item.titles[0].title) +
                                        '<div style="clear: both;"></div>' +
                                    '</div>' +
                                '</div>';
                    });

                    NewsContext.element.find('#news').append(str);
                } else {
                    NewsContext.scrollOff();
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
