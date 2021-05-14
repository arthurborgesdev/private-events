class User < ApplicationRecord
  has_many :events, foreign_key:"author_id", class_name: "Event"
  belongs_to :event, class_name: "Event", optional: true
end
