class BucketlistsController < ApplicationController

  def index
  end

  def new
    # create record in DB
    @bucketlist = Bucketlist.create(bucketlist_params)
    redirect_to :action => 'index'
  end

  private

  def bucketlist_params
    params.require(:bucketlist).permit(:user_id, :destination_id, :certified_hotel_id)
  end
end
