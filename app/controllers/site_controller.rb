class SiteController < ApplicationController
  def hotels
    @hotel = Hotel.new
    city = params[:city]
    stateProvinceCode = params[:state]
    arrive = params[:arrive]
    depart = params[:depart]
    hotels = Hotel.show_hotels(city, stateProvinceCode, arrive, depart)
    puts "HOTELS \n\n\n\n\n\n\n\n\n\n\n\n"
    puts hotels
    @hotels = hotels["HotelListResponse"]["HotelList"]["HotelSummary"]
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

