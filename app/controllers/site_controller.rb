class SiteController < ApplicationController

  def hotels
    @hotel = Hotel.new
    city = params[:city]
    stateProvinceCode = params[:state]
    country = params[:country]
    arrive = params[:arrive]
    depart = params[:depart]

    if city && stateProvinceCode && country && arrive && depart
      if(city != '')
        hotels = Hotel.show_hotels(city, stateProvinceCode, country, arrive, depart)
        @hotels = hotels["HotelListResponse"]["HotelList"]["HotelSummary"]
      else
        flash.now[:error] = "Please enter a city"
      end
      # Iterate through API response and compare to Certified hotel DB 
      # render results 
    end
  end

  def hotel
    hotelId = params[:hotelId]
    hotel = Hotel.show_hotel(hotelId)
    @hotel = hotel["HotelInformationResponse"]
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

