class Trinket < ApplicationRecord
	mount_uploader :photo_path, ImageUploader

	# Site for validations:
	# http://edgeguides.rubyonrails.org/active_record_validations.html#validation-helpers
	validates :photo_path, presence: true
	validates :description, presence: true, length: { minimum: 5 }
	validates :price, presence: true, numericality: true
end
