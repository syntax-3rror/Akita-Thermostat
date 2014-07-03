class ObservacionsController < ApplicationController
	
	def create
	    @thermostat = Thermostat.find(params[:thermostat_id])
	    @observacion= @thermostat.observacions.create(params[:observacion].permit(:observacion))
	    @observacion.username = current_user.username
	    @observacion.likes = thermostat  @observacion.save
	    redirect_to thermostat_path(@thermostat)
  	end

  	def delete
	  		@thermostat = thermostat.find(params[:thermostat_id])
		    @observacion = @thermostat.observacions.find(params[:id])
		    @observacion.destroy
		    redirect_to thermostat_path(@thermostat)
	end

	def like
		@observacion = observacion.find(params[:id])
		@observacion.addLike
		@observacion.save
		redirect_to (:back)	
	end

	def dislike
		@observacion = observacion.find(params[:id])
		@observacion.dislike
		@observacion.save
		redirect_to (:back)	
	end
	observacion