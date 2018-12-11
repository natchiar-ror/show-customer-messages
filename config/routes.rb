Rails.application.routes.draw do
  root 'home#index'
  get "view_message/:asset_id/:customer_id", to: "home#view_message", as: :view_message
  delete "delete_message/:asset_id", to: "home#delete_message", as: :delete_message
  resources :configs
  resources :assets  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
