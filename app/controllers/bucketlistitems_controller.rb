class BucketlistItemsController < ApplicationController

  def index
  end

  def new
    # create record in DB
    @bucketlistitems = Bucketlistitems.create(bucketlistitems_params)
    # redirect to index view (in bucketlists)
    # redirect_to :action => 'index'
  end

  def add
    destination = Destination.find_by({id: params[:destination_id]})
    puts current_user
    user_id = current_user.id
    bucketlistitem = current_user.bucketlistitem || current_user.create_bucketlistitem
    bucketlistitem.bucketlistitems.push bucketlistitem
  end

  def save
    @bucketlistitem.update_attributes(:destination_id => @destination.id)
  end

  private

  def bucketlistitems_params
    params.require(:bucketlistitem[]).permit(:user_id, :destination_id)
  end
end
