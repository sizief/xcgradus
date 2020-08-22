Rails.application.routes.draw do
  #get 'collection/index'
  get '/:collection/', to: 'collection#index', as: 'collection'
  get '/:collection/contract', to: 'collection#contract', as: 'contract'
  get '/:collection/:item', to: 'item#index', as: 'item'
  get '/api/:collection/:id', to: 'item_api#index', as: 'api_item'
  root 'page#index'
end
