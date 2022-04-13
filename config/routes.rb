Rails.application.routes.draw do
  get 'materials/new'
  get 'material/new'
  resources :philosophers
  resources :topics
  resources :materials
  root :to => 'pages#home'
  resources :users, :only => [:new, :create]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  
end