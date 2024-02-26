Rails.application.routes.draw do

  #Rutas del Controlador de las listas
  get '/lists', to: 'lists#index', as: 'lists'
  get '/lists/new', to: 'lists#new', as: 'new_list'
  get '/lists/:id', to: 'lists#show', as: 'list'
  post '/lists', to: 'lists#create'
  get '/lists/destroy', to: 'lists#destroy'

  #Rutas del Controlador del marcador de libros
  get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: 'new_list_bookmark'
  post 'lists/:list_id/bookmarks', to: 'bookmarks#create', as: 'list_bookmarks'
  delete 'bookmarks/:id', to: 'bookmarks#destroy', as: 'bookmark'
end
