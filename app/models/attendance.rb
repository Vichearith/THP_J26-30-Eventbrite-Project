class Attendance < ApplicationRecord
  after_create :new_attendee_send
  belongs_to :user
  belongs_to :event
end
