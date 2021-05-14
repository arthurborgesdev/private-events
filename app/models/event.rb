class Event < ApplicationRecord
  belongs_to :author, class_name: "User"
  has_many :attendants, through: :attendance_list, source: :event_attendant
end
