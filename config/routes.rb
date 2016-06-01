Rails.application.routes.draw do

  namespace :admin do
    get 'dashboard/index'
  end

  namespace :admin do 
    gem '', to: 'dashboard#index', as: '/'
  end
  
  mount ActionCable.server => '/cable'
  
  get 'rooms/show'

  resources :friends
  get 'users/index'

  devise_for :users
  root 'welcome#index'
end
