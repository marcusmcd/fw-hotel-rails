$( document ).ready(function() {
  var today = $( "#hotel-date" ).text();
  $( ".hotel-room-table" ).before( "Date: <input type='text' id='hotel-room-date' value='" + today + "'></input>" );
  $( "#hotel-room-date" ).datepicker({
     onSelect: function(date) {
       update_rooms(date);
     }});
});

function update_rooms(date) {
  $( "#hotel-date" ).text(date);
  var res_cells = $( ".hotel-res-room-cell" );
  res_cells.css("background-color", "#488689");
}