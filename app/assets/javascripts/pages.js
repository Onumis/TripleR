// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
$(function() {
  var form = $('form.new_contribution');
  var camera = $('input.btnCamera');

  camera.on('change', function(){
    if(this.files.length != 0){
      form.submit();
    }
  });

});
