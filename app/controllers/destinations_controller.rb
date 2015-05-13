class DestinationsController < ApplicationController

	def index
    @destinations = Destination.all
	end

	def show
		# @destinations = Destination.find(params[:id])
	end

  def add_to_bucket_list
    # add destination to bucketlist DB
  end
end
