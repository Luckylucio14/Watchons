class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show ]

  def index
    @places = Place.all
  end

  def show
    @event = Event.find(params[:event_id])
    @place = Place.find(params[:id])

    @markers =
      [{
        lat: @place.latitude,
        lng: @place.longitude,
        info_window: render_to_string(partial: "info_window", locals: {places: @place}),
        image_url: helpers.asset_url("Component 8 (2).png")
      }]


  end

  def update
  end

#   def create
#     @booking = Booking.new(booking_params)
#     @star = Star.find(params[:star_id])
#     @booking.user = current_user
#     @booking.status = "pending"
#     @booking.star = @star

#     if @booking.save
#       redirect_to dashboard_path(@booking)
#     else
#       render 'stars/show', status: :unprocessable_entity
#     end
#   end


#   private

#   def booking_params
#     params.require(:booking).permit(:arrival_date, :departure_date)
#   end
# end


end
