class LocationsController < ApplicationController
	
	def index
		@locations = Location.all
	end

	def new
    	@location = Location.new
  	end

	def create
    	@location = Location.new(params[:location])
      if @location.save
       	redirect_to @location, notice: 'Ubicacion ingresada' 
      else
        render action: "new" 
      end
  	end

  	def edit
  		@location = Location.find(params[:id])
  	end

	def update
	  	@location = Location.find(params[:id])
	    if @location.update_attributes(params[:location])
		    redirect_to @location, notice: 'Ubicacion Actualizada exitosamente.'
	    else
	    	render action: "edit" 
	    end
  	end

  	def destroy
	    @location = Location.find(params[:id])
	    @location.destroy
	    redirect_to :controller => :thermostats, :action => "index"      
  	end

	private
	  def location_params
	    params.require(:location).permit(:property, :city,:ubication)
	  end
end
