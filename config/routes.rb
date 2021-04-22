Rails.application.routes.draw do
  devise_for :users
	resources :posts do
	  resources :comments
	end
   resources :users do 
   	resources :relationships,only: [:create]
   end

   resources :relationships ,only: [:destroy]

  root to: 'posts#index'
  post 'create_like', to: 'likes#create'

  post '/users/:id/follow', to: "users#follow", as: "follow_user"
  post '/users/:id/unfollow', to: "users#unfollow", as: "unfollow_user"
end
