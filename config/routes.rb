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
  post '/:id' => 'books#show'
  devise_for :users
  resources :users,only:[:edit, :show, :destroy,:index]
  resources :books,only:[:new, :index, :show, :edit, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
