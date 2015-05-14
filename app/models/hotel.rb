require 'typhoeus'

class Hotel < ActiveRecord::Base
    belongs_to :user
  def self.show_hotels(city, stateProvinceCode, country, arrive, depart)
    fixed_arrive = arrive.gsub(/(\d{4})-(\d{2})-(\d{2})/, '\2/\3/\1')
    fixed_depart = depart.gsub(/(\d{4})-(\d{2})-(\d{2})/, '\2/\3/\1')
    response = Typhoeus.get("http://api.ean.com/ean-services/rs/hotel/v3/list?minorRev=5&apiKey=6bjgco74rs2j90o5mkhmsabuqe&sig=6bjgco74rs2j90o5mkhmsabuqe8fj76j23ppr001431025260622&cid=55505&locale=en_US&city=#{city.split(" ").join("+")}&stateProvinceCode=#{stateProvinceCode}&countryCode=#{country}&numberOfResults=100&arrivalDate=#{fixed_arrive}&departureDate=#{fixed_depart}&sort=DEFAULT&_type=json")
    
    hotels_data = JSON.parse(response.body)

    hotels_data
  end

  def self.show_hotel(hotelId)
    response = Typhoeus.get("http://api.ean.com/ean-services/rs/hotel/v3/info?cid=55505&minorRev=99&apiKey=6bjgco74rs2j90o5mkhmsabuqe&locale=en_US&currencyCode=USD&_type=JSON&hotelId=#{hotelId}")
    
    hotel_data = JSON.parse(response.body)

    hotel_data
  end
end
