class HelloController < ApplicationController
	def welcome
		
	end

	def solution
		# render "welcome"
		# redirect_to :controller=>"contact",:action=>"help"
		redirect_to :action=>"welcome"
	end

	def contact
		
	end
end
