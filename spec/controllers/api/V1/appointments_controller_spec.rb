require 'rails_helper'

RSpec.describe Api::V1::AppointmentsController, type: :controller do
  before(:all) do
    @user = create(:user)
    @course = create(:course)
  end
  describe 'POST creates a new appointment' do
    before do
      allow(controller).to receive(:authorized).and_return(true)
      post :create, params: { user_id: 1, course_id: 1, course_date: "UTC-6" }
    end

    it 'returns the created appointment' do
      expect(JSON.parse(response.body)["error"]["id"]).to eq(1)
    end
  end
end