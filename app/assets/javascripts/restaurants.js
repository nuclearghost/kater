//= require jquery.ui.autocomplete

$(function() {
	$("#input-search").autocomplete({
		source: "search.json",
		select: function  (event, ui) {
			window.location = ui.item.url;
		}
	});
});