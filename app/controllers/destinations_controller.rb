class DestinationsController < ApplicationController

	def index
	end
	
	def show
		@destinations = Destination.find(params[:id])
	end
end
