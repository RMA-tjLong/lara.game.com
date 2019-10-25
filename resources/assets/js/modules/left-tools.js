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
