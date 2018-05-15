Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # List all tasks
  get "tasks", to: "tasks#index"

  # Create a new task
  post "tasks", to: "tasks#create"
  get "tasks/new", to: "tasks#new", as: :new_task

  # Read one restaurant
  get "tasks/:id", to: "tasks#show", as: :task

  # Update a task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  patch "tasks/:id", to: "tasks#update"

  # Delete one restaurant
  delete "tasks/:id", to: "tasks#destroy"

end
