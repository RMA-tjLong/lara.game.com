// 重写 jQuery ajax 方法
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

// 替换 share 的 url 与 title
function assemble_share(url, title) {
    return share.replace(/%url%/g, url).replace(/%title%/g, title);
}