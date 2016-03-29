Rails.application.routes.draw do
  #list all the boards - listar todas las boards
  get 'boards', to: 'boards#all'
  #list all the post - listar todos los post -> params board name
  get '/:name', to: 'post#all'
  #list all the comments - listar todos los comentarios  -> params board name, and post id
  get '/:board/:post', to: 'comments#list'
  #get the current comment - obtener el comentario -> params board name, post id and comment id
  get '/:board/:post/:id', to: 'comments#show'

  #create a new post - crear un nuevo post -> params url: board name, body : title, user_ip
  post '/:name', to: 'post#create'
  #create a new comment - crear un nuevo comentario -> params
  post '/:board/:post', to: 'comments#create'
end
