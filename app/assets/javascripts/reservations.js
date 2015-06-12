$( document ).ready(function() {
  $( ".hotel-room-table" ).before( "<input type='text' id='hotel-room-date'></input>" );
  $( "#hotel-room-date" ).datepicker();
});