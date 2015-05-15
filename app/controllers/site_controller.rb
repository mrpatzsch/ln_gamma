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

      hotelids = []
      certified = []
      new_array = []
      @hotels.each do |hotel|
         hotelids.push(hotel["hotelId"])
      end
      puts "\n\n\n\n", hotelids
      @certified_hotels = CertifiedHotel.all
      hotelids.concat certified
      new_array.concat  hotelids

      @certified_hotels.each do |certify|
        certified.push(certify.hotel_id)
      end
      puts "\n\n\n\n\n certified", certified


    puts "\n\n\n\n", new_array.length
    final_array = new_array.select{|item| new_array.count(item) > 1}
    puts "\n\n\n\n\n\n\n\n\n Certified Hotels", final_array
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

