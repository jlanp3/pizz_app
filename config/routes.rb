Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  resources :tickets
  resources :pizzas, except: [:index, :show]
  resources :ticket_pizzas, except: [:index, :show]
end
