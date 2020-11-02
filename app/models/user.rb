class User < ApplicationRecord
    has_secure_password
    has_many :course_appointments
    has_many :courses, through: :course_appointments

    validates :username, presence: true, length: { in: 3..25, message: "length should be between 3 and 25" },
    uniqueness: {message: "should be unique"}

    validates :password, presence: true, length: { in: 3..25, message: "length should be between 3 and 25" }
end
