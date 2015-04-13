require 'rails_helper'

describe Calculations do

  before :each do
    @school = FactoryGirl.create(:school)
    @school_purchase = FactoryGirl.create(:school_purchase, school: @school)
    @school_purchase2 = FactoryGirl.create(:school_purchase, school: @school, bandwidth: 4, measure: 'm', cost: 75)
    @school.extend Calculations
  end

  describe "#average_cost_per_megabit" do
    it "calcuates average cost per megabit" do
      purchase_1_price = (@school_purchase.cost / (@school_purchase.bandwidth.to_f / 1000))
      purchase_2_price = (@school_purchase2.cost / @school_purchase2.bandwidth.to_f)
      average_cost = (purchase_1_price + purchase_2_price) / @school.send(:purchases).count
      expect(@school.average_cost_per_megabit).to eq(@school.sum_of_purchases / @school.total_number_of_purchases)
    end
  end
end