const elements = [News, LeftTools];

elements.forEach(function(module) {
    module.elements.forEach(function(item) {
        item.obj.events.forEach(function(event) {
            eval(item.name + '.' + item.obj.name + event + 'Listener()');
        })
    });
});
