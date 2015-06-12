$( document ).ready(function() {
  var today = $( "#hotel-date" ).text();
  $( ".hotel-room-table" ).before( "Date: <input type='text' id='hotel-room-date' value='" + today + "'></input>" );
  $( "#hotel-room-date" ).datepicker();
});