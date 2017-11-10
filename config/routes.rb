Rails.application.routes.draw do
  devise_for :admins
  resources :members
  resources :jobs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'members#index'
end
