# frozen_string_literal: true

RSpec.describe 'DELETE /api/auth' do
  let(:user) { create(:user) }
  let(:user_header) { user.create_new_auth_token }


  describe 'Login User can logout' do
    before do
      delete '/api/auth/sign_out',
             headers: user_header
    end

    it do
      expect(response).to have_http_status 200
    end
  end
end
