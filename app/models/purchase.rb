class Purchase
	include Mongoid::Document
	field :bandwidth, :type => Integer
	field :measure, :type => String
	field :cost, :type => Integer
	embedded_in :organization

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

end
