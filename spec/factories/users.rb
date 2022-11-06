# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'foobar@gmail.com' }
    password { 'foobar' }
  end
end
