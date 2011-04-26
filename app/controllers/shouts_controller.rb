class ShoutsController < ApplicationController

	def index
		@shouts = Shout.latest
  	@shout  = Shout.new
	end
	
  def new
  	@shout = Shout.new
  end
  
  def create
  	@shout = Shout.new(params[:shout])
		@shout.save
		if @shout.save
			flash[:notice] = "You shouted successfully!"
		else
			flash[:failure] = "You didn't shout successfully!"
		end
		redirect_to shouts_path
  end
end
