Rails.application.routes.draw do
  resources :users, only: [:new, :create]

   get 'login', to: 'sessions#new'
   post 'login', to: 'sessions#create'
   get 'welcome', to: 'sessions#welcome'

  get '/logout', to: 'users#logout'
  root 'sessions#welcome'

  resources :posts do
    resources :comments
  end
end
