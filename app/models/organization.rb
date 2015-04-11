class Organization
	include Mongoid::Document
	field :name, :type => String
	field :ben, :type => String
	# field :purchases, :type => array
	embeds_many :purchases
end
