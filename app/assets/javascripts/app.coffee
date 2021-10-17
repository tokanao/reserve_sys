# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  # $('.customer-form')
  #   .on 'ajax:success', (event, data, status, xhr) ->
  #     console.log 'success'
  #     $('.customer-form').html data
  #   .on 'ajax:error', (event, xhr, status, error) ->
  #     console.log 'error'

init = ->
  modal = $('.modal-dialog')
  table = $('.datatable').DataTable()

  $('#entry_start_time').datepicker
    sideBySide: true

  calendar = $('#calendar').fullCalendar
    header:
      left: 'prev,next today'
      center: 'title'
      right: 'month,basicWeek'
      # right: 'month,agendaWeek'
    events: 'api/schedules.json'
    selectable: true

    # 日付クリック
    select: (start, end) ->
      $('#datatable').show()

      params = $.param({start: start.toString(), end: end.toString()})
      $.get 'customers.js?' + params, (data) ->
        return

      modal.dialog
        modal: true
        width: 900
        title: 'モーダルダイアログ'
    eventClick: (event, js_event, view) ->
      if confirm "#{event.title}: 予定を削除してもよいですか？"
        $.ajax(
          method: 'delete'
          url: 'entries/' + event.id + '.json'
          beforeSend: (xhr) ->
            xhr.setRequestHeader 'X-CSRF-Token', $('meta[name="csrf-token"]').attr('content')
            return
          context: document.body
        ).done ->
          calendar.fullCalendar 'removeEvents', event.id
          return
        return
      return

# should sync that app/views/api/schedules/index.json.jbuilder, app/views/entries/create.js.erb
@registCalendarEvent = (id, title, start, end, color) ->
  eventData =
    id: id
    title: title
    start: start
    end: end
    allDay: true
    backgroundColor: color
  $('#calendar').fullCalendar 'renderEvent', eventData, true
  $('#calendar').fullCalendar 'unselect'


show_prompt = (start, end) ->
  alert("test")
  title = prompt('Event Title:')
  eventData = undefined
  if title
    eventData =
      title: title
      start: start
      end: end
    $('#calendar').fullCalendar 'renderEvent', eventData, true
  $('#calendar').fullCalendar 'unselect'
  return

$(document).ready(init)
$(document).on("turbolinks:load", init)
