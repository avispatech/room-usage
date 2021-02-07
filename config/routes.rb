Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :days, only: %i[show index]
  resources :shifts, only: :create

  root to: 'days#index'
end
