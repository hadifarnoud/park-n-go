# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  loaded_model = $('#parking_parking_branch_id :selected').text()
  if loaded_model.length < 1
    $('#parking_parking_branch_id').parent().hide()
  models = $('#parking_parking_branch_id').html()
  $('#company_name').change ->
    make = $('#company_name :selected').text()
    escaped_make = make.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(models).filter("optgroup[label='#{escaped_make}']").html()
    if options
      $('#parking_parking_branch_id').html(options)
      $('#parking_parking_branch_id').parent().show()
    else
      $('#parking_parking_branch_id').empty()
      $('#parking_parking_branch_id').parent().hide()

  $("#company_name").trigger "change"
