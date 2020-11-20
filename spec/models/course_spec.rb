require 'rails_helper'

RSpec.describe Course, type: :model do
  describe 'Associations' do
    it { should have_many(:course_appointments) }
    it { should have_many(:users).through(:course_appointments) }
  end
end
