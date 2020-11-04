class User < ApplicationRecord
  has_secure_password
  has_many :course_appointments
  has_many :courses, through: :course_appointments

  validates :username, presence: true, length: { in: 3..25 },
                       uniqueness: {case_sensitive: false  }

  validates :password, presence: true, length: { in: 3..25 }
end
