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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
