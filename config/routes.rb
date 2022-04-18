Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :philosophers
  resources :topics
  resources :materials
  resources :password_resets
  resources :users, :only => [:new, :create, :edit]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end