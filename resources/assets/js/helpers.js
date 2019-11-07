// 重写jQuery ajax方法
(function($) {
    var _ajax = $.ajax;

    $.ajax = function(opt) {
        var _opt = $.extend(opt, {
            headers : {
            },
        });

        _ajax(_opt);
    };
})(jQuery);