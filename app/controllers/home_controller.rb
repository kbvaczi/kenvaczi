class HomeController < ApplicationController

	def index
		@blog = BlogSimple.all.first
	end
	
end
