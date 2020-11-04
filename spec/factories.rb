# rubocop:disable Layout/LineLength
FactoryBot.define do
  factory :api_key do
    token { 'Token' }
  end

  factory :user do
    username { Faker::Name.unique.first_name + Faker::Name.unique.last_name }
    password { 'password' }
  end

  factory :course do
    name { 'Javascript' }
    description { 'JavaScript often abbreviated as JS, is a programming language that conforms to the ECMAScript specification. JavaScript is high-level, often just-in-time compiled, and multi-paradigm. It has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions.' }
  end

  factory :course_appointment do
    user_id { 1 }
    course_id { 1 }
  end
end
# rubocop:enable Layout/LineLength
