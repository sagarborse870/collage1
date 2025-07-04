Rails.application.routes.draw do
  # get 'students/index'
  # get 'students/show'
  # get 'students/new'
  # get 'students/edit'
  # get 'students/delete'
  # get 'teachers/index'
  # get 'teachers/view'
  # get 'teachers/new'
  # get 'teachers/edit'
  # get 'teachers/delete'
   resources :teachers
   #resources :doctors
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  # Defines the root path route ("/")
   root "teachers#index"
end
