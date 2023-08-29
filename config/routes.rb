Rails.application.routes.draw do
  

  root 'home#index'
  resources :home
  resources :journals do
    resources :journal_entries
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  #get 'demo/index'
  #get 'demo/hello'
  #get 'demo/other_hello'
  #get ':controller(/:action(/:id))'
  # Defines the root path route ("/")
  # root "articles#index"
end

