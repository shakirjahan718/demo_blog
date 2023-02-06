Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  get '/u/:id', to: 'users#profile', as: 'user'

  # Defines the root path route ("/")
  root "pages#home"
  get 'about', to: 'pages#about'

  # /posts/1/comments/4
  resources :posts do 
    resources :comments
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html


  
end
