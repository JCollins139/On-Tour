Rails.application.routes.draw do
  devise_for :users

  resources :blogs 

  root 'pages#front_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
