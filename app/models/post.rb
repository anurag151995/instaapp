class Post < ApplicationRecord
	belongs_to :user
	has_many :comments
	has_many :likes, as: :likeable
	has_one_attached :main_image
end
