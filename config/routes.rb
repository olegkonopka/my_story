Rails.application.routes.draw do
 get 'sessions/new'

  devise_for :users


  devise_scope :user do  
  get '/users/sign_out' => 'devise/sessions#destroy'  
  end
 

  get '/home' => 'pages#home'

  get 'pages/index'

  get '/profile' =>'pages#profile'

  get '/about' => 'pages#about'

 
   root 'pages#index'
  resources :user
   resources :posts

end
