Rails.application.routes.draw do
  

  root 'home#index'
  get 'journal/form'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #root 'demo#index'

  #get 'demo/index'
  #get 'demo/hello'
  #get 'demo/other_hello'
  #get ':controller(/:action(/:id))'
  # Defines the root path route ("/")
  # root "articles#index"
end
