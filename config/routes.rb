Rails.application.routes.draw do
  resources :users
  resources :microposts          #only: [:create, :destroy]

  #get    '/readme',    to: 'static_pages#readme'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  post    '/signup',  to: 'users#create'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  get   '/users/admin',     to: 'users#admin'

  get 'tags/:tag', to: 'microposts#index', as: :tag
  #the error reflects whatever the route is typed, but the args after /:tag 
  #needs some argument to work
  root   'static_pages#home'
end
