RSpec.describe 'POST /api/image_galleries' do
    let(:user) { create(:user, email: "newtest@gmail.com", password: "password") }
    let(:user_header) { user.create_new_auth_token }
    let!(:gallery1) do
        attributes_for(:image_gallery, title: 'Second Article', description: 'test uploader 1', 
          image: 'https://img.freepik.com/free-vector/border-template-with-cute-animals_1308-40340.jpg',
                         created_at: Time.now - 100_000)
    end
  
    describe 'Login User can create image gallery' do
      before do
        post '/api/image_galleries',
               headers: user_header,
               params: gallery1
      end
  
      it do
        expect(response).to have_http_status 200
      end
    end
  end