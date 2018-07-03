Rails.application.routes.draw do
  get 'welcome/index2'
  root 'welcome#index2'
  get 'states/index'
  get 'cities/index'
  get 'user_regions/new'

  devise_for :users
	get 'companies/new'
	get 'users/new'
  get 'roles/role'
  resources :user_regions
	resources :users
  resources :roles
	resources :companies
get 'cities/:state', to: 'application#cities'
resources :states, only: :index
	resources :companies do
  resources :comments
  
end
resource :user, only: [:edit] do
  collection do
    patch 'update_password'
  end
end
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
