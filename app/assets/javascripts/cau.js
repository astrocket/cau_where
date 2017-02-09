app.Cau = function () {
    this._input = $('#search');
    this._initAutocomplete();
};

app.Cau.prototype = {
    _initAutocomplete: function () {
        this._input
            .autocomplete({
                source: '/cau/autocomplete',
                appendTo: '#search-results',
                select: $.proxy(this._select, this)
            })
            .autocomplete('instance')._renderItem = $.proxy(this._render, this);
    },
    _render: function (ul, item) {
        var markup = [
            item.title
        ];
        return $('<a href="'+ item.url +'">')
            .append(markup.join(''))
            .appendTo('#search-results');
    },
    _select: function (e, ui) {
        this._input.val(ui.item.title + ' - ' + ui.item.author);
        return false;
    }
};
