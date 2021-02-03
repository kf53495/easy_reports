Rails.application.routes.draw do
  devise_for :students, controllers: {
    registrations: 'students/registrations'
  }
  devise_for :teachers, controllers: {
    registrations: 'teachers/registrations'
  }
  devise_for :employees, controllers: {
    registrations: 'employees/registrations'
  }
  resources :reports, only: [:index, :show, :new, :create] do
    collection do
      get 'search'
    end
  end
  resources :study_materials, only: [:index, :new, :create]
  root to: 'reports#index'
end
