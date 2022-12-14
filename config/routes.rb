# frozen_string_literal: true

Rails.application.routes.draw do
  
  mount_devise_token_auth_for 'User', at: 'api/auth', controllers: {
    sessions: 'api/sessions'
  }
  namespace :api do
    resources :image_galleries
  end
end
