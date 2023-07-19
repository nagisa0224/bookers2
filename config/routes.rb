Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  
  get 'home/about' => 'homes#about'
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :books, only: [:new, :create, :index, :show, :edit, :update, :destroy ]
  resources :users, only: [:show, :edit, :index, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
