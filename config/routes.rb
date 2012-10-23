Activities::Application.routes.draw do
  resources :welcome, :only => [ :index ]
  resources :dashboard, :only => [ :index ]
  resources :users
  resources :activities
  resources :sessions

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root :to => 'welcome#index'
end
