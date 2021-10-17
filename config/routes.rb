Rails.application.routes.draw do
  get 'requests/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'full_calendar#index'

  namespace :api do
    defaults format: :json do
      resources :schedules
      resources :courses
    end
  end

  resources :systems
  resources :courses
  resources :resources
  resources :entries do
    collection do
      # get 'new_from_calendar'
    end
  end
  resources :customers
  resources 'full_calendar'
end
