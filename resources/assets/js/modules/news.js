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
