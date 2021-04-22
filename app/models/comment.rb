class Comment < ApplicationRecord
  belongs_to  :post
  has_many :likes, as: :likeable
  belongs_to  :parent, class_name: 'Comment', optional: true
  has_many    :replies, class_name: 'Comment', foreign_key: :parent_id, dependent: :destroy
end
