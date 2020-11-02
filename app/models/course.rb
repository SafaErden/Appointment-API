class Course < ApplicationRecord
    has_many :course_appointments
    has_many :users, through: :course_appointments
end
