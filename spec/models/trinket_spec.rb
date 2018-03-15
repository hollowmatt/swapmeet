require 'rails_helper'

describe Trinket do 
	it "is valid with a title, description, photo_path and price" do 
		trinket = create(:trinket)
		expect(trinket).to be_valid
	end
	it "is invalid without a description"
	it "is invalid without a photo_path"
	it "is invalid without a price"
end
	
