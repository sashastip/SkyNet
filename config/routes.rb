Rails.application.routes.draw do

  get 'rooms/show'

  resources :friends
  get 'users/index'

  devise_for :users
  root 'welcome#index'
end
