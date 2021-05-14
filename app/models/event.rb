class Event < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :attendance_lists, foreign_key: :scheduled_event_id
  has_many :attendants, through: :attendance_lists, source: :event_attendant
end
