const leftTools = {
    'search' : function() {
        if ($(this).hasClass('active')) {
            $(this).removeClass('active');
        } else {
            $(this).addClass('active');
        }
    }
};

$('#left-tools .search-tool').on('click', leftTools.search);