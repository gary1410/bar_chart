require 'rails_helper'

describe School do

	before(:each) do
		@school1 = FactoryGirl.create(:school)
		@school2 = FactoryGirl.create(:school, name: 'Olympic Middle School', ben: '114626')
    @school_purchase1 = FactoryGirl.create(:school_purchase, school: @school1)
    @school_purchase2 = FactoryGirl.create(:school_purchase, school: @school2, ben: '114626')
	end

	 context '#ben_vs._avg_cost'	do
	  it 'returns an array with a subarray' do
	  	mapped_values = [[@school1.ben, @school1.average_cost_per_megabit], [@school2.ben, @school1.average_cost_per_megabit]] 
	  	expect(School.ben_vs_avg_cost).to eq(mapped_values)
	  end
	 end
end