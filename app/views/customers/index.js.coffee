$('.customer-list').html "<%= j (render 'search') %>"
$('.datatable').DataTable()

$('.datatable tbody').on 'click', 'tr', ->
  url =  $(@).data 'href'
  $.ajax(
    method: 'get'
    url: url
    context: document.body
  ).done (data) ->
    # $('.entry-form').html data
    return
  return
