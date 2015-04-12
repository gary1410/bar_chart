class ChartsController < ApplicationController
	def show
		@school_chart = School.build_chart
	end
end