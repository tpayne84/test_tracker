jQuery ->
  $('#client_user_id').parent().hide()
  $('#user-header').parent().hide()
  users = $('#client_user_id').html()
  $('#client_client_id').change ->
    client = $('#client_client_id :selected').text()
    escaped_client = client.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(users).filter("optgroup[label='#{escaped_client}']").html()
    if options
      $('#client_user_id').html(options)
      $('#client_user_id').parent().show()
      $('#user-header').parent().show()
    else
      $('#client_user_id').empty()
      $('#client_user_id').parent().hide()
      $('#user-header').parent().show()