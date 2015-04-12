class Purchase
	include Mongoid::Document
	include Calculations
	field :bandwidth, :type => Integer
	field :measure, :type => String
	field :cost, :type => Integer
	embedded_in :organization

end
