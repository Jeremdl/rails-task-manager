Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  #Lister les tâches (Read All)
  get "tasks", to: "tasks#index"

  #Créer une nouvelle tâche : Step 1: Get the form +  Step2 : Post
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  #Show une tâche (Read One)
  get "tasks/:id", to: "tasks#show", as: :task

  #Editer une tâche (Update)
  get "tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "tasks/:id", to: "tasks#update"

  #Supprimer une tâche (Delete)
  delete "tasks/:id", to: "tasks#destroy"
end
