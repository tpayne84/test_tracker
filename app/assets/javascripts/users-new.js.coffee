jQuery ->
  $('#user_group_id').parent().hide()
  $('#group-header').parent().hide()
  users = $('#user_group_id').html()
  $('#client_client_id').change ->
    client = $('#client_client_id :selected').text()
    escaped_client = client.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(users).filter("optgroup[label='#{escaped_client}']").html()
    if options
      $('#user_group_id').html(options)
      $('#user_group_id').parent().show()
      $('#group-header').parent().show()
    else
      $('#user_group_id').empty()
      $('#user_group_id').parent().hide()
      $('#group-header').parent().show()