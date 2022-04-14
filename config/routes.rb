Rails.application.routes.draw do
  resources :philosophers
  resources :topics
  resources :materials
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :edit]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end