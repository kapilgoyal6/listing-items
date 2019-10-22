class HomeController < ActionController::Base
	layout 'application'

	def index
		 @listings = Listing.all
	end
	
end 