// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
let form = $('form.new_contribution');
let camera = $('input.btnCamera');

camera.addEventListener('change', function(){
  if(this.files.length != 0){
    form.submit();
  }
});
