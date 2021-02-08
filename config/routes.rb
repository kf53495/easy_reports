Rails.application.routes.draw do
  devise_for :students, controllers: {
    registrations: 'students/registrations',
    sessions: 'students/sessions'
  }
  devise_for :teachers, controllers: {
    registrations: 'teachers/registrations',
    sessions: 'teachers/sessions'
  }
  devise_for :employees, controllers: {
    registrations: 'employees/registrations',
    sessions: 'employee/sessions'
  }
  resources :reports, only: [:index, :show, :new, :create] do
    collection do
      get 'search'
      get 'choose_student'
    end
  end
  resources :study_materials, only: [:index, :new, :create]
  resources :material_relations, only: [:new, :create]
  root to: 'reports#index'
end
