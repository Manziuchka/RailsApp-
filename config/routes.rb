Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'users#index', as: 'home'


  get 'tests' => 'tests#tests'

  resources :users

  post 'sign_in', to: 'authentication#login'


end
