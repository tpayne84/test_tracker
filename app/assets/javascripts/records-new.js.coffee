jQuery ->
  $('#record_user_id').parent().hide()
  $('#user-header').parent().hide()
  users = $('#record_user_id').html()
  $('#client_client_id').change ->
    client = $('#client_client_id :selected').text()
    escaped_client = client.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(users).filter("optgroup[label='#{escaped_client}']").html()
    if options
      $('#record_user_id').html(options)
      $('#record_user_id').parent().show()
      $('#user-header').parent().show()
    else
      $('#record_user_id').empty()
      $('#record_user_id').parent().hide()
      $('#user-header').parent().show()