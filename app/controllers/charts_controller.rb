class ChartsController < ApplicationController

	def show
		@school_chart = School.ben_vs_avg_cost
	end

end