include ActionDispatch::TestProcess

FactoryBot.define do  
  factory :trinket do
  	title 'Test'
		description 'Description' 
		price 3.99
		photo_path { fixture_file_upload( Rails.root + 'spec/fixtures/myfiles/dwflip.jpg') }
	end
end
