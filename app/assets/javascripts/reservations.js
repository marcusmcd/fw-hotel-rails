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
  $( ".hotel-res-dates" ).each(function() {
    var res_date = $(this).text();
    var res_id   = $(this).data("resId");
    if (res_date === date) {
      var room_num = $(this).siblings().first().text();
      $( ".hotel-res-room-cell" ).css("background-color", "#488689");
      $( "#" + room_num ).css("background-color", "#864D57")
        .text("")
	.append("<a href='/reservations/" + res_id + "/edit'>" + room_num + "</a>");
    } else {
      $( ".hotel-res-room-cell" ).css("background-color", "#488689");
    }
  });
}