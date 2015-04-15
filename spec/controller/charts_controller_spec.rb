require 'rails_helper'
# require 'rspec/rails'

describe ChartsController, type: :controller do
  before :each do
    @school = FactoryGirl.create(:school)
  end

  describe '#show' do
    it 'renders the show template' do
      get :show
      expect(response).to render_template(:show)
    end

    it 'should assign an array of ben numbers and avg cost in sub arrays' do
      get :show
      expect(School.ben_vs_avg_cost).to eq([@school_chart])
    end
  end
end