class BucketlistsController < ApplicationController

  def index
  end

  def new
    # create record in DB
    @bucketlist = Bucketlist.create(bucketlist_params)
    # redirect to index view (in bucketlists)
    # redirect_to :action => 'index'
  end

  def add
    destination = Destination.find_by({id: params[:destination_id]})
    puts current_user
    user_id = current_user.id
    bucketlist = current_user.bucketlist || current_user.create_bucketlist
    bucketlist.bucketlists.push bucketlist
  end

  private

  def bucketlist_params
    params.require(:bucketlist).permit(:user_id, :destination_id)
  end
end
