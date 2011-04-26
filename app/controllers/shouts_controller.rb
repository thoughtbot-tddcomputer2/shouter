class ShoutsController < ApplicationController

	def index
		@shouts = Shout.all.reverse
  	@shout = Shout.new
	end
	
  def new
  	@shout = Shout.new
  end
  
  def create
  	@shout = Shout.new(params[:shout])
		@shout.save
		redirect_to shouts_path, :notice => "You shouted successfully!"
  end
end
