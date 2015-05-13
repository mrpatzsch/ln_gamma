class BucketlistsController < ApplicationController

  def index
  end

  def new
    # create record in DB
    @bucketlist = Bucketlist.create(bucketlist_params)
    # redirect to index view (in bucketlists)
    redirect_to :action => 'index'
  end

  def save
    @bucketlist.update_attributes(:destination_id => @destination.id)
  end

  private

  def bucketlist_params
    params.require(:bucketlist).permit(:user_id, :destination_id, :certified_hotel_id)
  end
end
