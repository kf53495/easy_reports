Rails.application.routes.draw do
  devise_for :teachers, controllers: {
    registrations: 'teachers/registrations'
  }
  devise_for :employees, controllers: {
    registrations: 'employees/registrations'
  }
  resources :reports, only: [:index]
  root to: 'reports#index'
end
