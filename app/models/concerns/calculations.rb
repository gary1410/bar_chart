module Calculations

# no test for average_cost_per_megabit 
# model test controller test?

# buy in on testing


	def average_cost_per_megabit
		sum_of_purchases / total_number_of_purchases
	end

	def sum_of_purchases
		sum = purchases.map { |purchase| purchase.purchase_price }.reduce(:+)
	end

	def total_number_of_purchases
		total_purchase = purchases.count
	end

	def purchase_price
		cost/bandwidth_in_mb
	end

	def bandwidth_in_mb
		case measure
		when "k" 
			bandwidth.to_f / 1000
		when "m"
			bandwidth.to_f
		when "g"
			bandwidth.to_f * 1000
		when "t"
			bandwidth.to_f * 1000 * 1000
		end
	end

	private

	def purchases
		if School 
			school_purchases
		elsif Organization
			purchases
		end
	end

end