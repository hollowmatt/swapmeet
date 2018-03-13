class Trinket < ApplicationRecord
	mount_uploader :photo_path, ImageUploader
	validates :photo_path, presence: true
	validates :description, presence: true
	validates :description, length: { minimum: 5 }
	validates :price, presence: true
	validates :price, numericality: true
end
