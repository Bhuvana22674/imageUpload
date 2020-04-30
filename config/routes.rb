Rails.application.routes.draw do
  get 'images/index'
  get 'images/new'
  get 'images/show/:id', to: 'images#show'
  post 'images/create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
