class Observacion < ActiveRecord::Base
  belongs_to :thermostat
  def init
		update_attribute(:likes,0)
	end
	def addLike
		update_attribute(:likes,likes+1)
	end

	def dislike 
		if likes ==0
			likes =0
		else 
		 decrement!(:likes, 1)
		  end	
	end	 
end
