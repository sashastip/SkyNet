Rails.application.routes.draw do

  resources :friends
  get 'users/index'

  devise_for :users
  root 'welcome#index'
end
