Rails.application.routes.draw do
  resources :companies
  devise_for :users
  get 'home/index'
  resources :rols
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
