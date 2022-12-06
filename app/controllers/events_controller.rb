class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @events = Event.select { |event| event.full_datetime.to_date > Date.tomorrow }
    @events = @events.sort_by { |event| event.full_datetime}
    @events_today = Event.select { |event| event.full_datetime.to_date == Date.today }
    @events = @events.sort_by { |event| event.full_datetime}
    @events_tomorrow = Event.select { |event| event.full_datetime.to_date == Date.tomorrow }
    @events = @events.sort_by { |event| event.full_datetime}
  end

  def show
    @event = Event.find(params[:id])
  end
end
