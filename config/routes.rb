Rails.application.routes.draw do

  scope module: 'api' do
    namespace :v1 do
      # resources :accounts, :profiles, :interests, :purposes,
      # :commutes, :stations, only: [:create, :show]
      # resources :accounts, only: [:create, :show]
      resources :accounts, only: [:show, :index]
      resources :profiles, only: [:create, :show, :index]
      resources :stations, only: [:show, :index]
      resources :commutes, only: [:create, :show, :index]
      get 'matches', to: 'matches#index'
      post 'signup', to: 'accounts#create'
      post 'login', to: 'sessions#create'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
