require 'typhoeus'

class Hotel < ActiveRecord::Base
    belongs_to :user
  def self.show_hotels(destination, arrive, depart, sort) 
    #byebug
    #if arrive != ""
    fixed_arrive = arrive.gsub(/(\d{4})-(\d{2})-(\d{2})/, '\2/\3/\1')
    #end
    fixed_depart = depart.gsub(/(\d{4})-(\d{2})-(\d{2})/, '\2/\3/\1')
    fixed_destination = destination.try(:split,(" "))
    destination_fixed = fixed_destination.try(:join,("+"))
    sort = "DEFAULT"
    response = Typhoeus.get("http://api.ean.com/ean-services/rs/hotel/v3/list?geoSearch?minorRev=5&apiKey=" + ENV['EAN_key'] + "&cid=55505&locale=en_US&destinationString=#{destination_fixed}&numberOfResults=40&arrivalDate=#{fixed_arrive}&departureDate=#{fixed_depart}&sort=" + sort + "&_type=json")
    
    hotels_data = JSON.parse(response.body)

    hotels_data
  end

  def self.show_hotel(hotelId)
    response = Typhoeus.get("http://api.ean.com/ean-services/rs/hotel/v3/info?cid=55505&minorRev=99&apiKey=" + ENV["EAN_key"] + "&locale=en_US&currencyCode=USD&_type=JSON&hotelId=#{hotelId}")

    hotel_data = JSON.parse(response.body)

    hotel_data
  end

  def self.responsible(hotel_id)
    response = Typhoeus.get("http://api.ean.com/ean-services/rs/hotel/v3/list?cid=55505&minorRev=99&apiKey=" + ENV["EAN_key"] + "&locale=en_US&currencyCode=USD&_type=JSON&hotelIdList=#{hotel_id}")

    hotel_data = JSON.parse(response.body)

    hotel_data
  end
end
