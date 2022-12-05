class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]

  def index
    @events = Event.all.order(:full_datetime)
    @events_today = Event.select{ |event| event.full_datetime.to_date == Date.today }
    @events_tomorrow = Event.select{ |event| event.full_datetime.to_date == Date.tomorrow }
  end

  def show
    @event = Event.find(params[:id])
  end
end
