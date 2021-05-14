class User < ApplicationRecord
  has_many :events, foreign_key:"author_id", class_name: "Event"
  has_many :attendance_lists, foreign_key: :event_attendant_id
  has_many :scheduled_events, through: :attendance_lists
end
