require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  describe 'POST create' do
    before do
      allow(controller).to receive(:authorized).and_return(true)
      post :create, params: { username: 'User', password: 'password' }
    end

    it 'returns the created user' do
      expect(JSON.parse(response.body)['user']).to eq(2)
    end
  end
  describe 'POST login' do
    before do
      allow(controller).to receive(:authorized).and_return(true)
      post :login, params: { username: 'User', password: 'wrongpassword' }
    end

    it 'returns the created user' do
      expect(JSON.parse(response.body)['error']).to eq('Invalid Username or Password')
    end
  end
end
