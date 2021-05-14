class AttendanceList < ApplicationRecord
  belongs_to :event_attendant, class_name: 'User'
  belongs_to :scheduled_event, class_name: 'Event'
end
