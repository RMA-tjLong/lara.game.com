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

const ToTopTool = {
    'element'   : $('#left-tools .to-top-tool'),
    'events'    : ['click'],

    'clickListener' : function() {
        this.element.on('click', function() {
            $('#context').animate({ scrollTop : 0 }, 500);
        });
    }
};

const LeftTools = {
    'elements' : [
        SearchTool,
        SearchBox,
        ToTopTool
    ]
};
