class Product < ApplicationRecord
	has_and_belongs_to_many :categories
	has_many :images, as: :imageable, dependent: :destroy
	mount_uploader :avatar, AvatarUploader
end
