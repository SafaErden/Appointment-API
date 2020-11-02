class CourseAppointment < ApplicationRecord
  belongs_to :user
  belongs_to :course
  belongs_to :timezone
end
