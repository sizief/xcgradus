Rails.application.routes.draw do
  #get 'collection/index'
  get '/:collection/', to: 'collection#index', as: 'collection'
  get '/:collection/:item', to: 'item#index', as: 'item'
  root 'page#index'
end
