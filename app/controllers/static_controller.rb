class StaticController < ApplicationController
	def index
		if user_signed_in?
			redirect_to "/dashboard"
		end
	end

	def cfp
	end
	def help
	end
	def team
	end
	def about
	end
	def venue
	end
	def news
	end
	def travel
	end
end
