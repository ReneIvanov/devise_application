Rails.application.routes.draw do
  resources :forums
  resources :posts
  #devise_for :users

  #routes for devise, but here is a list of customized controllers which we changed in Rails application
  devise_for :users, controllers: { registrations: 'users/registrations' }
  

  root to: 'forums#new'
  
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
