require 'rails_helper'

RSpec.describe Api::V1::CoursesController, type: :controller do
  describe 'GET #index' do
    before do
      allow(controller).to receive(:authorized).and_return(true)
      @user = create(:user)
      @course = create(:course)
      @appointment = create(:course_appointment)
    end

    it 'returns http success' do
      get :index
      expect(response.status).to eq(200)
    end

    it 'returns all courses' do
      create_list(:course, 1)
      get :index
      items = JSON.parse(response.body)
      expect(items.count).to eq(1)
    end
  end
end
