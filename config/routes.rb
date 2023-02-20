Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'tasks', to: 'tasks#index' # I can list tasks
  get 'tasks/:id', to: 'tasks#show' # I can view the details of a task
  get 'tasks/new', to: 'tasks#new' # I can add a new task
  post 'tasks', to: 'tasks#create' # I can add a new task
  get 'tasks/:id/edit', to: 'tasks#edit' # I can edit a task
  patch 'tasks/:id', to: 'tasks#update', as: 'task' # I can edit a task
  delete 'tasks/:id', to: 'tasks#destroy' # I can remove a task
  # resources :tasks, except: / only: [:create]
end
