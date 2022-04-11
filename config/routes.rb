Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create]
  resources :mixtapes, :only => [:new, :create, :index]

  get '/login' => 'session#new'
  get '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end