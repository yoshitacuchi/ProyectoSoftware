$(window).load(function(){

});

function funcion() {
 
}
$(document).ready(function() {      
  funcion();

  $( "#slider" ).slider({
    range: true,
    min: 0,
      max: 9000,
      values: [0, 7000],
      slide: function (event, ui) {
          $("#one").val(ui.values[0]);
          $("#two").val(ui.values[1]);
      }
  });
  $('.carousel').carousel({
    interval: 4000
  });

});