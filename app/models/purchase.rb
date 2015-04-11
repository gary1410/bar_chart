class Purchase
	include Mongoid::Document
	
	embedded_in :organization
end
