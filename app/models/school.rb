class School < ActiveRecord::Base

	has_many :school_purchases, primary_key: 'ben', foreign_key: 'ben'

	def self.build_chart
		p = School.all
		m = Organization.all
		grouped_by_math = (p + m).group_by { |s| p s.average_cost_per_megabit}
		
		return grouped_by_math.each { |key, object| grouped_by_math[key] = object.first.ben }.invert
	end

#calcuates_average_cost_per_megabit

	def average_cost_per_megabit 
		sum_of_purchases = school_purchases.map { |purchase| purchase.purchase_price }.reduce(:+)
		total_purchase = school_purchases.count
		sum_of_purchases/total_purchase
	end

end
