class Shout < ActiveRecord::Base

	def self.latest
		order("created_at desc")
	end
	
end
