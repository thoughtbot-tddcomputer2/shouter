class Shout < ActiveRecord::Base
	
	validates_presence_of :body
	
	def self.latest
		order("created_at desc").limit(5)
	end
	
end
