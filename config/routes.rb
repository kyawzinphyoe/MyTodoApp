Rails.application.routes.draw do
  resources :todo_lists

  root 'todo_lists#index'

  get 'home/delete_marked'
  get 'home/delete_all'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
