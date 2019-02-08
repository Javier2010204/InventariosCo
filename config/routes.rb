Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root 'home#index'
    resources :rols
    resources :companies
  end

  unauthenticated :user do
  	devise_scope :user do
  		root 'home#unregistered', as: :unregistered_root
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
