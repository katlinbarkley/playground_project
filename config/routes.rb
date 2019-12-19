Rails.application.routes.draw do
  resources :playgrounds
  root 'welcome#index'

  get 'welcome/index'
  
  get 'admin/index'

  get 'playgrounds/index'

  get 'playgrounds/new'
  
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end