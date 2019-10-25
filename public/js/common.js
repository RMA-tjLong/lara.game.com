
const SearchTool = {
    'name'      : 'searchTool',
    'element'   : $('#left-tools .search-tool'),
    'events'    : ['Click'],

    'searchToolClickListener' : function () {
        this.element.on('click', function() {
            // TODO:bug
            if ($(this).hasClass('active')) {
                $(this).removeClass('active');
            } else {
                $(this).addClass('active');
            }
        });
    }
};

const LeftTools = {
    'elements' : [
        {
            'obj'   : SearchTool,
            'name'  : 'SearchTool'
        }
    ]
};

const NewsTitle = {
    'name'      : 'newsTitle',
    'element'   : $('#news .news-list .headline .news-title'),
    'events'    : ['Click'],

    'newsTitleClickListener' : function () {
        this.element.on('click', function () {
            $(this).parents('.news-list').find('.body-fold').removeClass('body-fold');
        });
    }
};

const News = {
    'elements' : [
        {
            'obj'   : NewsTitle,
            'name'  : 'NewsTitle'
        }
    ]
};

const elements = [News, LeftTools];

elements.forEach(function(module) {
    module.elements.forEach(function(item) {
        item.obj.events.forEach(function(event) {
            eval(item.name + '.' + item.obj.name + event + 'Listener()');
        })
    });
});
