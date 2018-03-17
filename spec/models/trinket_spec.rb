require 'rails_helper'

describe Trinket do 
	it "is valid with a title, description, photo_path and price" do 
		trinket = create(:trinket)
		expect(trinket).to be_valid
	end
	
	it "is invalid without a description" do
		expect(FactoryBot.build(:trinket, description: nil)).to_not be_valid
	end

	it "is invalid without a photo_path" do
		expect(FactoryBot.build(:trinket, photo_path: nil)).to_not be_valid
	end

	it "is invalid without a price" do
		expect(FactoryBot.build(:trinket, price: nil)).to_not be_valid
	end
end
	
