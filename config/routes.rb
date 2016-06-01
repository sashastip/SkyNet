Rails.application.routes.draw do

  namespace :admin do
    resources :dashboard
  end

  mount ActionCable.server => '/cable'
  
  get 'rooms/show'

  resources :friends
  get 'users/index'

  devise_for :users
  root 'welcome#index'
end
