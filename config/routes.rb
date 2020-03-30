# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/new'
  get 'sessions/new'
  get 'sessions/destroy'

  root 'tests#index'

  get :signup, to: 'users#new'
  get :signin, to: 'sessions#new'
  get :logout, to: 'sessions#destroy'

  resources :users, only: :create
  resources :sessions, only: %i[new create destroy]

  resources :tests do
    resources :questions, shallow: true, except: :index do
      resources :answers, shallow: true, except: :index
    end
    member do
      post :start
    end
  end

  # GET /test_passages/1/result
  resources :test_passages, only: %i[show update] do
    member do
      get :result
    end
  end
end
