Rails.application.routes.draw do

  root 'pages#home'
  get 'about', to: 'pages#about'


  # This one line gave us a new article path, a post to create articles, 
  # a patch to edit articles, a path to delete articles, show article path, index article path
  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
