class School < ActiveRecord::Base

	has_many :school_purchases, primary_key: 'ben', foreign_key: 'ben'

	def self.build_chart
		all_schools = School.all + Organization.all
		ben_and_avg_cost = all_schools.map { |school_obj| [school_obj.ben, school_obj.average_cost_per_megabit]}
	end

#calcuates_average_cost_per_megabit

	def average_cost_per_megabit 
		sum_of_purchases / total_number_of_purchases
	end

	def sum_of_purchases
		sum = school_purchases.map { |purchase| purchase.purchase_price }.reduce(:+)
	end

	def total_number_of_purchases
		total_purchase = school_purchases.count
	end

end
