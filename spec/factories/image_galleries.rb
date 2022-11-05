# frozen_string_literal: true

FactoryBot.define do
  factory :image_gallery do
    title { 'MyString' }
    description { 'MyText' }
    image { 'https://img.freepik.com/free-vector/border-template-with-cute-animals_1308-40340.jpg' }
    association :user
  end
end
