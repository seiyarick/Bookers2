Rails.application.routes.draw do
  # get 'users/edit'
  # get 'users/show'
  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  root 'homes#top'
  get 'users' => 'users#index'
  get 'homes/about' => 'homes#about'
  # resources :users,only:[:edit, :show]
  resources :books,only:[:new, :index, :show, :edit]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
