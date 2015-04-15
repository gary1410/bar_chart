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

  describe "#sum_of_purchases" do
    it 'returns the sum of purchase_price on school or organization purchases' do
      expect(@school.sum_of_purchases).to eq(@school_purchase.purchase_price + @school_purchase2.purchase_price)
    end
  end

  describe "#total_number_of_purchases" do
    it 'returns total count of the purcahses' do
      expect(@school.total_number_of_purchases).to eq(@school.school_purchases.count)
    end
  end

  describe "#purchase_price" do
    it 'returns a purchase_price which is the cost/bandwidth_in_mb' do
      expect(@school_purchase.purchase_price).to eq(@school_purchase.cost/@school_purchase.bandwidth_in_mb)
    end
  end

  describe '#bandwidth_in_mb' do
    it 'returns bandwith divided by 1000 when measure is k' do
      school_purchase = FactoryGirl.create(:school_purchase, bandwidth: 2000, measure: 'k')
      expect(school_purchase.bandwidth_in_mb).to eq(school_purchase.bandwidth.to_f/1000)
    end

    it 'returns bandwith when measure is m' do
      school_purchase = FactoryGirl.create(:school_purchase, bandwidth: 1200, measure: 'm')
      expect(school_purchase.bandwidth_in_mb).to eq(school_purchase.bandwidth.to_f)
    end

    it 'returns bandwidth * 1000 when measure is g' do
      school_purchase = FactoryGirl.create(:school_purchase, bandwidth: 200, measure: 'g')
      expect(school_purchase.bandwidth_in_mb).to eq(school_purchase.bandwidth.to_f * 1000)
    end

    it 'returns bandwidth * 1000 * 1000 when measure is t' do
      school_purchase = FactoryGirl.create(:school_purchase, bandwidth: 500, measure: 't')
      expect(school_purchase.bandwidth_in_mb).to eq(school_purchase.bandwidth.to_f * 1000 * 1000)
    end


  end

  describe "#purchases" do
    it 'returns school_purchases for School' do
      expect(@school.send(:purchases)).to eq(@school.school_purchases)
    end
  end



end