# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'GET /api/image_galeries', type: :request do
  describe 'successfully' do
    let!(:gallery1) do
      create(:gallery, title: 'Second Article', description: 'test uploader 1', image: 'ttttt',
                       created_at: Time.now - 100_000)
    end
    let!(:gallery2) do
      create(:gallery, title: 'First Article', description: 'test uploader 2', image: 'ttttt',
                       created_at: Time.now - 200_000)
    end
    let!(:gallery3) do
      create(:gallery, title: 'Third Article', description: 'test uploader 3', image: 'ttttt', created_at: Time.now)
    end
    before do
      get '/api/image_galeries'
    end

    it 'is expected to return 200 response status' do
      expect(response).to have_http_status 200
    end

    it 'is expected to have lenght of 3 articles' do
      expect(response_json['images'].count).to eq 3
    end

    it 'is expected to have a title attribute' do
      expect(response_json['images'].first['title']).to eq 'Third Article'
    end

    it 'is expected that the article has a teaser text' do
      expect(response_json['images'].first['description']).to eq 'some text'
    end

    it 'is expected to contain dates in a readable format' do
      expect(response_json['images'].first['date']).to eq Time.now.strftime('%F')
    end

    it 'is expected to return lists with newest articles first' do
      expect(response_json['images'].first['title']).to eq 'Third Article'
    end
  end

  describe 'unsuccessfully if no articles in database' do
    before do
      get '/api/image_galeries'
    end

    it 'is expected to return 204 response status' do
      expect(response).to have_http_status 204
    end
  end
end
