class SiteController < ApplicationController

  def hotels
    @hotel = Hotel.new
    destination = params[:destination] || ""
    arrive = params[:arrive] || ""
    depart = params[:depart] || ""
    sort = params[:sort] || "DEFAULT"
    unless destination == "" && arrive == "" && depart == "" 
      hotels = Hotel.show_hotels(destination, arrive, depart, sort)
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

  def responsible_search
    @certified_hotels = CertifiedHotel.all
    list = []
    @certified_hotels.each do |hotels|
      list.push(hotels["hotel_id"])
    end
    responsible = Hotel.responsible_h(list.split(" ").join(","))
    @responsible_hotels = responsible
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

