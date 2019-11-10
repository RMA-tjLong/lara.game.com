// 重写 jQuery ajax 方法
(function($) {
    let _ajax = $.ajax;

    $.ajax = function(opt) {
        let _opt = $.extend(opt, {
            headers : {
            },
        });

        _ajax(_opt);
    };
})(jQuery);

// 替换 share 的 url 与 title
(function($) {
    let share = $('#template-share').html();

    $.compileTemplateShare = function(id, title) {
        return share.replace(/%id%/g, id).replace(/%title%/g, title);
    };
})(jQuery);

// 编译 route
(function($) {
    $.compileTemplateRoute = function() {
        return JSON.parse($('#template-route').html());
    }
})(jQuery);

// 解析 url 参数
(function($) {
    let re = /([^&=]+)=?([^&]*)/g,
        decodeRE = /\+/g,
        decode = function (str) {
            return decodeURIComponent(str.replace(decodeRE, " "));
        };

    $.parseParams = function(query) {
        query = query.split('?')[1] || '';
        let params = {}, e;

        while (e = re.exec(query)) params[decode(e[1])] = decode(e[2]);
        return params;
    };
})(jQuery);