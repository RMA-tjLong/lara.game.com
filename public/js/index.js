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
                    NewsContext.element.find('#news').append(1111);
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
