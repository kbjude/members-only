Rails.application.routes.draw do
  resources :user
  resources :post, only: %i[:new, :create, :index]
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
