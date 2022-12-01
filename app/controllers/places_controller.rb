class PlacesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show ]
  def index
    @places = Place.all
    @markers = @flats.geocoded.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude,
        info_window: render_to_string(partial: "info_window", locals: {flat: flat})
      }
    end
  end

  def show
    @place = Place.find(params[:id])
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
