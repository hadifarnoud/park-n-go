# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#booking_pick_up').datetimepicker();
  $('#booking_pick_up').datetimepicker();
  start = $('#booking_pick_up').text()
  console.log(start)
  $('#booking_drop_off').datetimepicker('setStartDate',start);
