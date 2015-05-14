class DestinationsController < ApplicationController

	def index
	end
	
	def show
		@destination = Destination.find(params[:id])
	end

	def edit
		@destination = Destination.find(params[:id])
	end

	def update
    respond_to do |format|
      if @destination.update(destination_params)
        format.html { redirect_to @destination, notice: 'Destination was successfully updated.' }
        format.json { render :show, status: :ok, location: @destination }
      else
        format.html { render :edit }
        format.json { render json: @destination.errors, status: :unprocessable_entity }
      end
    end
  end

private
  def destination_params
      params.require(:destination).permit(:name, :location, :website, :certification, :category, :desc_prod, :desc_good, :directions, :recommended, :seo_tags, :image )
    end


end
