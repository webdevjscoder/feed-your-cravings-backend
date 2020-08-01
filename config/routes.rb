Rails.application.routes.draw do
  resources :entrees
  resources :categories
  resources :meals
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
