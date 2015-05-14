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

	def update
    destination_id = params[:id]
    destination = Destination.find(destination_id)

    destination.update_attributes(destination_params)

    redirect_to "/destinations/#{destination.id}"
  end

private
  def destination_params
      params.require(:destination).permit(:name, :location, :website, :certification, :category, :desc_prod, :desc_good, :directions, :recommended, :seo_tags, :image )
    end
end
