Rails.application.routes.draw do
  devise_for :users
  resources :posts do
  	resources :comments, only: [:index, :create, :edit, :update]
  end
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
