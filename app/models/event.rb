class Event < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :users, foreign_key: "attending_id", class_name: "User"
end
