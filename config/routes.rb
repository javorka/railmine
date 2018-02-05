Rails.application.routes.draw do
  resources :issue_comments
  resources :work_entries
  resources :issues
  resources :users
  resources :teams
  resources :sprints
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
