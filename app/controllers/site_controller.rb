class SiteController < ApplicationController

  def hotels
    @hotel = Hotel.new
    destination = params[:destination] || ""
    arrive = params[:arrive] || ""
    depart = params[:depart] || ""
#byebug
    unless destination == "" 
        hotels = Hotel.show_hotels(destination, arrive, depart)
        @hotels = hotels["HotelListResponse"]["HotelList"]["HotelSummary"]

      # Iterate through API response and compare to Certified hotel DB 
      # render results 
    end
  end

  def hotel
    hotelId = params[:hotelId]
    hotel = Hotel.show_hotel(hotelId)
    @hotel = hotel["HotelInformationResponse"]
  end

  def index
    @destinations = Destination.all.first(3)
  end

  def destinations
  end

  def blog
  end

  def faq
  end

  def contact
  end

	def hoteldetails
	end

end

