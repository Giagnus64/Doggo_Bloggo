Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # homepage
  root 'posts#index', as: 'home'

  #generate RESTful routes
  resources :posts
  resources :doggos
  resources :categories
end
