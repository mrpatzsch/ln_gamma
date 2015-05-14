class BucketlistItemsController < ApplicationController

  def index
    @bucketlistitems = current_user.bucketlist_items.find_all
  end

  def create
    # create record in DB
    @bucketlistitems = current_user.bucketlist_items.create(bucketlistitem_params)
    # redirect to index view (in bucketlists)
    redirect_to :back
  end

  def destroy
    bucketlistitem = current_user.bucketlist_items.find_by(destination_id: params[:id])
    bucketlistitem.delete

    redirect_to :back
  end

  private

  def bucketlistitem_params
    params.require(:bucketlist_item).permit(:destination_id)
  end
end
