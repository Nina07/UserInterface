class Category < ApplicationRecord
	has_and_belongs_to_many :products, join_table: :product_categories
	has_many :subcategories, class_name: "Category", foreign_key: "parent_id"
	belongs_to :parent_category, class_name: "Category", optional: true
	has_many :images, as: :imageable, dependent: :destroy
  mount_uploader :avatar, AvatarUploader
end
