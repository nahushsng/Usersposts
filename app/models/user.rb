class User < ApplicationRecord

has_secure_password
has_many :posts
has_many :comments
has_many :events_user
has_many :events, through: :events_user
has_one_attached :image
end
