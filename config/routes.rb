Rails.application.routes.draw do
  # get 'main/index/'
root "main#index"
  match 'main(/index)', to: 'main#index', via: :get
  match 'about', to: 'main#about', via: :get
  match 'hello', to: 'main#hello', via: :get

  get 'tasks/index'
  get 'tasks/new'
  get 'tasks/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
