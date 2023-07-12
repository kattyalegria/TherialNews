Rails.application.routes.draw do
  resources :comments
  get 'home/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # resources :posts, except: [:index]
  resources :posts
  root "home#index"
  # get '/posts', to: 'posts#index', as: 'user_root'
end
