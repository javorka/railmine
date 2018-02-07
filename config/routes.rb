Rails.application.routes.draw do
  resources :issue_comments
  resources :work_entries
  resources :users
  resources :teams

  resources :sprints do
    resources :issues
  end
  resources :projects do
    resources :issues
  end

  # Authentication
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  root 'welcome#index'
end
