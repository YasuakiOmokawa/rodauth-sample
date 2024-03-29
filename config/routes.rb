# frozen_string_literal: true

Rails.application.routes.draw do
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resource :dashboard, only: [:show]

  # Defines the root path route ("/")
  root 'homes#index'

  draw :debug
end
