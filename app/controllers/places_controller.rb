class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show ]
  def index
    @places = Place.all
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude
      }
    end
  end

  def show
    @place = Place.find(params[:id])
    redirect_to place_path(@place)
  end

  def update
  end
end
