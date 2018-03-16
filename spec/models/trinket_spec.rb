require 'rails_helper'

describe Trinket do 
	it "is valid with a title, description, photo_path and price" do 
		trinket = create(:trinket)
		expect(trinket).to be_valid
	end
	
	it "is invalid without a description" do
		FactoryBot.build(:trinket, description: nil).should_not be_valid
	end

	it "is invalid without a photo_path" do
		FactoryBot.build(:trinket, photo_path: nil).should_not be_valid
	end

	it "is invalid without a price" do
		FactoryBot.build(:trinket, price: nil).should_not be_valid
	end
end
	
