Rails.application.routes.draw do
  root 'pages#front_page'
  resources :blogs

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
