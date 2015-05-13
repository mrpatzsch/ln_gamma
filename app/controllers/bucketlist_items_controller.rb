class BucketlistItemsController < ApplicationController

  def index
  end

  def create
    binding.pry
    # create record in DB
    @bucketlistitems = BucketlistItem.create(bucketlistitem_params)
    # redirect to index view (in bucketlists)
    redirect_to :back
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

  def bucketlistitem_params
    params.require(:bucketlist_item).permit(:destination_id)
  end
end
