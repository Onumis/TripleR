// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function() {
  var formType = $('.edit_contribution');
  var radios = $('.edit_contribution input[type="radio"]');

  radios.on('click', function() {
    $.get("/tips", {q: this.value}, function(data) {
      if(data) {
        $('.dailyTips').html(
          "<h2> <a href=/tips/" + data.id + ">"+ data.title + "</a></h2>" +
          "<a href=/tips/" + data.id + "><img src='"+ data.image_url + "'></a>" +
          "<p>"+ data.body + "</p>"
        );
      }
    });
  })
});
