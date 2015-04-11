require 'rails_helper'

describe School do

	before(:each) do
		@school1 = FactoryGirl.create(:school)
		@school2 = FactoryGirl.create(:school, name: 'Olympic Middle School', ben: '114626')
    @school_purchase = FactoryGirl.create(:school_purchase, school: @school1)
    @school_purchase = FactoryGirl.create(:school_purchase, school: @school2)
	end

	 context '#ben_vs._avg_cost'	do
	  it 'returns an array with a subarray' do
	  	mapped_values = [[@school1.ben, @school1.average_cost_per_megabit], [@school2.ben, @school1.average_cost_per_megabit]] 
	  	expect([[@school1.ben, @school1.average_cost_per_megabit], [@school2.ben, @school1.average_cost_per_megabit]]).to eq(mapped_values)
	  end
	 end
end