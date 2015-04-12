require 'rails_helper'

describe Calculations do
  class School
  end

  before :each do
    @school = FactoryGirl.create(:school, name: 'Mount Baker Middle School', ben: "123456")
    @school.extend Calculations
  end

  describe "#average_cost_per_megabit" do
    it "calcuates average cost per megabit" do
      expect {School.average_cost_per_megabit}.to eq( sum_of_purchases / total_number_of_purchases )
    end
  end
end