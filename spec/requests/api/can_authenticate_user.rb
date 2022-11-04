# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'POST /api/auth/sign_in' do
  let!(:auth_user) { create(:user, email: 'foobar@gmail.com', password: 'foobar') }

  describe "user with bad credentials can't connect" do
    before do
      post '/api/auth/sign_in', params: {
        email: 'foobar@gmail',
        password: 'foobar'
      }
    end

    it do
      expect(response).to have_http_status 401
    end
  end

  describe 'authenticate user' do
    before do
      post '/api/auth/sign_in', params: {
        email: 'foobar@gmail.com',
        password: 'foobar'
      }
    end

    it do
      expect(response).to have_http_status 200
    end
  end
end
