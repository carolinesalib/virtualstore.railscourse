Rails.application.routes.draw do

  get 'backoffice', to: 'backoffice/dashboard#index'

  namespace :backoffice do
    resources :categories, except: [:show, :destroy]
    resources :admins, except: [:show]
    get 'dashboard', to: 'dashboard#index'
    get 'admins', to: 'admins#index'
  end

  namespace :site do
    get 'home', to: 'home#index'
  end

  devise_for :admins, :skip => [:registration]
  devise_for :members

  root 'site/home#index'
end
