# config/routes.rb
Rails.application.routes.draw do
  root "posts#index"

  get 'documentary/index'
  get 'documentary/new'
  get 'documentary/create'

  get 'series/index'
  get 'series/new'
  get 'series/create'

  get 'movies/index'
  get 'movies/new'
  get 'movies/create'

  #Rutas get
  get 'posts/index'
  get 'posts/create'
  get 'posts/new'

  #Rutas Post
  post "posts" => "posts#create"
  post "movies" => "movies#create"
  post "series" => "series#create"
  post "documentary" => "documentary#create"
  
  # root "articles#index"
end
