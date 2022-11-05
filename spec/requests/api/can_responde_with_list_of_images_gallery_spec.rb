# frozen_string_literal: true
RSpec.describe 'GET /api/image_galleries', type: :request do
  let(:user) { create(:user, email: "newtest2@gmail.com", password: "password2") }
  let(:user_header) { user.create_new_auth_token }

  describe 'successfully' do

    before do
      get '/api/image_galleries',
      headers: user_header
    end

    it 'is expected to return 204 response status' do
      expect(response).to have_http_status 204
    end
  end

  describe 'unsuccessfully if no images gallery in database' do
    before do
      get '/api/image_galleries',
      headers: user_header
    end

    it 'is expected to return 204 response status' do
      expect(response).to have_http_status 204
    end
  end
end
