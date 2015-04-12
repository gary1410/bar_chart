class SchoolPurchase < ActiveRecord::Base
	belongs_to :school
	include Calculations

end