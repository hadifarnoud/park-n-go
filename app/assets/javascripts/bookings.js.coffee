# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#booking_pick_up').datepicker
  	dateFormat: 'yy-mm-dd'
  $('#booking_drop_off').datepicker
    dateFormat: 'yy-mm-dd'
