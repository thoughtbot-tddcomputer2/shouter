module ApplicationHelper

	def gravatar(user, size = 40)
		# include MD5 gem, should be part of standard ruby install
		require 'digest/md5'

		# get the email from URL-parameters or what have you and make lowercase
		#email_address = params[:email].downcase

		# create the md5 hash
		hash = Digest::MD5.hexdigest(user.email)

		# compile URL which can be used in <img src="RIGHT_HERE"...
		image_tag "http://www.gravatar.com/avatar/#{hash}?s=#{size}"
	end
	
end
