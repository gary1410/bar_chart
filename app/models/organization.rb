class Organization
	include Mongoid::Document
	field :name, :type => String
	field :ben, :type => String
	embeds_many :purchases

	def average_cost_per_megabit
		sum_of_purchases = purchases.map { |purchase| purchase.purchase_price }.reduce(:+)
		total_purchase = purchases.count
		sum_of_purchases/total_purchase
	end

end
