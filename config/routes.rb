Rails.application.routes.draw do
  get 'child/index'
  get 'child/show'
  get 'child/new'
  get 'child/edit'
  root 'static_pages#home'

  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
