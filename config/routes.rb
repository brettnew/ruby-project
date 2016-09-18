Rails.application.routes.draw do
  devise_for :users

  resources :users

  resources :languages

  root :to => 'users#index'
end
