$( document ).ready(function() {
  $( ".hotel-room-table" ).before( "<div type='text' id='hotel-room-date'></div>" );
  $( "#hotel-room-date" ).datepicker();
});