class User < ApplicationRecord
  has_many :events, foreign_key:"author_id", class_name: "Event"
  has_many :scheduled_events, through: :attendance_list
end
