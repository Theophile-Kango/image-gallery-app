RSpec.describe "POST /api/auth" do 
    let!(:user) { create(:user, email: 'foobar@gmail.com', password: "foobar") }

    describe "user with bad credentials can't connect" do 
        before do 
            post '/api/auth', params: { 
                email: 'foobar@gmail.com', password: 'foobar',
                password: 'fooba'
            }

            it do 
                expect(response).to have_http_status 401
            end
        end
    end

    describe 'authenticate user' do 
        before do 
            post '/api/auth', params: { 
                email: 'foobar@gmail.com', password: 'foobar',
                password: 'foobar'
            }

            it do 
                expect(response).to have_http_status 204
            end
        end
    end
end