Rails.application.routes.draw do

  scope module: 'api' do
    namespace :v1 do
      # resources :accounts, :profiles, :interests, :purposes,
      # :commutes, :stations, only: [:create, :show]
      # resources :accounts, only: [:create, :show]
      resources :accounts, only: [:show, :index]
      post 'signup', to: 'accounts#create'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
