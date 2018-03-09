class Trinket < ApplicationRecord
	mount_uploader :photo_path, ImageUploader
end
