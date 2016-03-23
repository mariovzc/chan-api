Rails.application.routes.draw do
  get 'boards', to: 'boards#all'
  get '/:name', to: 'post#all'
  post '/:name', to: 'post#create'
end
