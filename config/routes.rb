Rails.application.routes.draw do
  devise_for :employees
  resources :reports, only: [:index]
  root to: 'reports#index'
end
