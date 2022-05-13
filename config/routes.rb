Rails.application.routes.draw do

  resources :inventory_levels
  resources :warehouses
  resources :items


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end