class PlacesController < ApplicationController
  def index
    @places = Places.all
  end

  def show
  end

  def update
  end
end
