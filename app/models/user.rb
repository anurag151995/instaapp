class User < ApplicationRecord
  devise :database_authenticatable, :registerable
  has_many :posts
  has_many :likes
  has_many :following, foreign_key: "follower_id", class_name:"Relationship"
  has_many :followers, foreign_key: "followed_id", class_name:"Relationship"
  has_one_attached :main_image

  def self.find_for_database_authentication(conditions={})
    find_by(user_name: conditions[:email]) || find_by(email: conditions[:email])||find_by(mobile_number: conditions[:email])
  end
end
