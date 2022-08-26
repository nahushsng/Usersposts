class Event < ApplicationRecord
    has_many :event_user
    has_many :users, through: :events_user
    has_one_attached :image
end
