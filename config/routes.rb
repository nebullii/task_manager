Rails.application.routes.draw do
  root "main#index"

  match 'about', to: 'main#about', via: :get
  match 'hello', to: 'main#hello', via: :get

  get 'main/index'

  resources :catagories do
    member do
      get :delete
    end
  end
  
  resources :tasks do 
    member do 
      get :delete
    end
  end

  # get 'tasks/index'
  # get 'tasks/new'
  # get 'tasks/edit'
  # get 'tasks/show'
  # get 'tasks/delete' 
  # get 'catagories/index'
  # get 'catagories/new'
  # get 'catagories/show'
  # get 'catagories/edit'
  # get 'catagories/delete'
  # # get 'main/index/'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
