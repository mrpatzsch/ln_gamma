class CertifiedHotelsController < ApplicationController

	def hotels
		@certified_hotels = CertifiedHotel.all
	end
end