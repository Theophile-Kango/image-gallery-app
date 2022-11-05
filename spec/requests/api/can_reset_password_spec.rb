RSpec.describe 'RESET /api/auth/password' do
    let(:user) { create(:user, email: "foobar5@gmail.com", password: "foobar5") }
    let(:user_header) { user.create_new_auth_token }
  
  
    describe 'Login User can reset password' do
      before do
        put '/api/auth/password',
               headers: user_header,
               params: {
                password: 'foobar10',
                password_confirmation: 'foobar10'
              }
      end
  
      it do
        expect(response).to have_http_status 200
      end
    end
end