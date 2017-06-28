Rails.application.routes.draw do
  get 'feed/index'

  resources :feed

  root 'feed#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
