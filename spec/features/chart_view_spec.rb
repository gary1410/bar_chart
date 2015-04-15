require 'rails_helper'

feature 'movie reviews' do
	before :each do
		@school = FactoryGirl.create(:school)
	end
  scenario 'are displayed for a specific movie' do
  	#this needs to be tested with Jasmine.
  end

end
