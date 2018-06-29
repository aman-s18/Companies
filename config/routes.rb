Rails.application.routes.draw do
  get 'welcome/index2'
  root 'welcome#index2'
  devise_for :users
	get 'companies/new'
	get 'users/new'
	resources :users
	resources :companies
	resources :companies do
  resources :comments
  
end
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
