class ShoutsController < ApplicationController
	before_filter :authorize

	def index
		@shouts = Shout.latest
  	@shout  = Shout.new
	end
  
  def create
  	@shout = Shout.new(params[:shout])
  	@shout.user = current_user
		if @shout.save
			flash[:notice] = "You shouted successfully!"
		else
			flash[:failure] = "You didn't shout successfully!"
		end
		redirect_to root_path
  end
  
  def destroy
  	@shout = Shout.find(params[:id])
  	@shout.destroy
  	redirect_to root_path
  end
end
