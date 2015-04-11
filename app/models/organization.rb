class Organization
	include Mongoid::Document
	field :name, :type => String
	field :ben, :type => String
	embeds_many :purchases

	def do_the_math
		# payments.sum(&:price)
		sum_of_purchases = purchases.map { |purchase| purchase.purchase_price }.reduce(:+)
		# sum_of_purchases = school_purchases.sum { |purchase| purchase.purchase_price }
		# sum_of_purchases= self.school_purchases.inject(:+).each { |purchase| purchase.purchase_price }
		total_purchase = purchases.count
		sum_of_purchases/total_purchase
	end

end
