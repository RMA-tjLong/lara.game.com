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
        this.element.scroll(function() {
            if ($(this).scrollTop() >= $(this).prop('scrollHeight') - $(this).height()) {
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
