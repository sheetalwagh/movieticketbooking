Rails.application.routes.draw do
  devise_for :users
  namespace :admin do
      resources :auditoria
      resources :movies
      resources :orders
      resources :showtimes

      root to: "auditoria#index"
    end
  resources :orders
  resources :showtimes
  resources :auditoria
  resources :movies

  root to: "movies#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
