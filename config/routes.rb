Rails.application.routes.draw do
  root :to => 'users#index'
  
  resources :users

  resources :languages
end
