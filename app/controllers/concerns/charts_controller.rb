class ChartsController < ApplicationController

	def show
		@schools = School.all
	end

end