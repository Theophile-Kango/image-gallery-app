# frozen_string_literal: true

FactoryBot.define do
  factory :image_gallery do
    title { 'MyString' }
    description { 'MyText' }
    image { 'https://heroku.app' }
    association :user
  end
end
