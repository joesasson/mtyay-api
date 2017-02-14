Rails.application.routes.draw do
  resources :users

  scope module: 'api' do
    namespace :v1 do
      resources :users, only: [:create, :show]
      post 'signup', to 'users#create'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
