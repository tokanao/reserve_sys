class Api::SchedulesController < ApplicationController
  def index
    @entries = Entry.all
    @all_day = System.first ? System.first.entry_unit == 1 : true
    # render json: events.to_json
  end

  def events
    [
      {
        title: 'event1',
        start: '2017-08-01',
        backgroundColor: 'red'
      },
      {
        title: 'event2',
        start: '2017-08-05',
        end: '2017-08-07'
      },
      {
        title: 'event3',
        start: '2017-08-09T12:30:00',
        allDay: false
      }
    ]
  end
end
