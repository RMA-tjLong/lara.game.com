const elements = [News, LeftTools];

elements.forEach(function(module) {
    module.elements.forEach(function(item) {
        item.events.forEach(function(event) {
            item[event + 'Listener']();
        });
    });
});
