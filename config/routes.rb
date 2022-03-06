Rails.application.routes.draw do
  # get 'users/edit'
  # get 'users/show'
  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  root 'homes#top'
  # get 'users' => 'users#index'
  get '/home/about' => 'homes#about'
  devise_for :users
  resources :users,only:[:edit, :show, :destroy,:index,:update]
  resources :books

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
