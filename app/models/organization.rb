class Organization
	include Mongoid::Document
	include Calculations
	field :name, :type => String
	field :ben, :type => String
	embeds_many :purchases

end
