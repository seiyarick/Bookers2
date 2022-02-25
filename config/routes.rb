Rails.application.routes.draw do
  get 'users/edit'
  get 'users/show'
  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'homes/top'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
