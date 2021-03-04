Rails.application.routes.draw do
  resources :ingredients
  resources :consumables
  
  resources :users do
    resources :recipes
    resources :pantries
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
