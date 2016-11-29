Rails.application.routes.draw do
 
  resources :artists, only: [:index, :new, :create, :show, :edit]
  
  get 'welcome/index'
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
