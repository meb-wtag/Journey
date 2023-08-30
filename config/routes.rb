Rails.application.routes.draw do
  
  root 'home#index'
  resources :home
  resources :journals do
    resources :journal_entries
  end
end

