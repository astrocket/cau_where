// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require turbolinks
//= require materialize-sprockets
//= require_tree .

var ready;
ready = (function() {
    $("#search").autocomplete({
        source: '/cau/autocomplete',
        appendTo: '#search-results'
    })
    .autocomplete('instance')._renderItem = function (ul, item) {
        var markup = [
            '<a href="'+ item.url +'" data-turbolinks="false">' + item.title + '</a>'
        ];
        console.log(item);
        return $('<li>')
            .append(markup.join(''))
            .appendTo(ul);
    };

});

$(document).ready(ready);
$(document).on('page:load', ready);