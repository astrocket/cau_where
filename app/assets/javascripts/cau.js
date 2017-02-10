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
    _render: function (div, item) {
        var markup = [
            '<a href="'+ item.url +'">' + item.title + '</a>'
        ];
        return $('<li>')
            .append(markup.join(''))
            .appendTo(div);
    },
    _select: function (e, ui) {
        this._input.val(ui.item.title + ' - ' + ui.item.author);
        return false;
    }
};
