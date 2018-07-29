Rails.application.routes.draw do
  
  # devise_for :admin_users, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  
  get 'welcome/index2'
  root 'welcome#index2'
  get 'states/index'
  get 'cities/index'
  get 'user_regions/new'
  get 'countries/new'
  get 'companies/new'
  get 'users/new'
  get 'roles/role'

  resources :user_regions
	resources :users
  resources :roles
	resources :companies
  resources :countries
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
end
