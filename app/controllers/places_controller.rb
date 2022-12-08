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
    @place = Place.find(params[:id])
    @event = Event.find(params[:event_id])

    if @place.status == "Places disponibles"
      @place.status = "Quelques places"
    elsif @place.status == "Quelques places"
      @place.status = "Complet"
    end
    @place.save
    redirect_to event_place_path(@event, @place)
  end

  # def edit
  #       @place = Place.find(params[:id])
  #       @place.update(params[:place])
  #       if @place.status = "Complet"

  #         redirect_to place_path(@place)
  #       elsif @place.status = "Places disponibles"

  #         redirect_to place_path(@place)
  #       else @place.status = "Places disponibles"
  #     end
  # end

  # def update
  #   @place = Place.find(params[:id])
  #   @place.update(params[:place])
  #   redirect_to place_path(@place)
  # end

  # def status
  #   @place = Place.find(params[:id])
  #   # retrouver le place
  #   @place.update(params[:place])
  #   if @place.status = "complet"
  #   # update la palce avec le bon statut
  #   redirect_to place_path(@place)
  #   # rediriger vers une page
  # end

  # def encore
  #   @place = Place.find(params[:id])
  #   # retrouver le place
  #   @place.update(params[:place, :status])

  #   # update la palce avec le bon statut
  #   redirect_to place_path(@place)
  #   # rediriger vers une page

  # end

  # def dispo
  #   @place = Place.find(params[:id])
  #   # retrouver le place
  #   @place.update(params[:place, :status])
  #   # update la palce avec le bon statut
  #   redirect_to place_path(@place)
  # rediriger vers une page #si je clique sur le bouton de j'y vais placé au #show_places
      #lien sur le bouton j'y vais a la methode status
      #button_to 'Scrape', scrape_path
      #la methode status indique qu'a chaque clique augment l'status par defaut de 25%
      #sauf si c'est deja à 100%

  # end





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
end
