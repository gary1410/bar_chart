class School < ActiveRecord::Base
	include Calculations
	has_many :school_purchases, primary_key: 'ben', foreign_key: 'ben'

	def self.ben_vs_avg_cost
		#adds the collection obojects

		all_schools = School.all + Organization.all
		# Data needs to be mapped as array of arrays
		ben_and_avg_cost = all_schools.map { |school_obj| [school_obj.ben, school_obj.average_cost_per_megabit]}
	end

end
