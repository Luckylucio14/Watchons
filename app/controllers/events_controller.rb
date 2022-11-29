class EventsController < ApplicationController
  def index
    @event = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @places = @event.places
  end
  
end
