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

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)
   

     respond_to do |format|
    if @destination.save
      format.html { redirect_to @destination, notice: 'Destination was successfully created.' }
      format.json { render :show, status: :created, location: @destination }
    else
      format.html { render :new }
      format.json { render json: @destination.errors, status: :unprocessable_entity }
    end
  end
  end

	def update
    destination_id = params[:id]
    destination = Destination.find(destination_id)

    destination.update_attributes(destination_params)

    redirect_to "/destinations"
  end

private
  def destination_params
      params.require(:destination).permit(:name, :location, :website, :certification, :category, :desc_prod, :desc_good, :directions, :recommended, :seo_tags, :image )
    end

end
