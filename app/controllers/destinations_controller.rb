class DestinationsController < ApplicationController

	def index
    @destinations = Destination.all
	end

	def show
		@destination = Destination.find(params[:id])
	end

	def edit
		@destination = Destination.find(params[:id])
	end

end
