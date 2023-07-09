Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # read all
  get 'articles', to: 'articles#index'
  # create
  get 'articles/new', to: 'articles#new'
  post 'articles', to: 'articles#create'
  # read one
  get 'articles/:id', to: 'articles#show', as: 'article'
  # update
  get 'articles/:id/edit', to: 'articles#edit', as: 'edit'
  patch 'articles/:id', to: 'articles#update'
  # delete
  delete 'articles/:id', to: 'articles#destroy'
end
