Rails.application.routes.draw do
  get 'posts/new'
  post 'posts/create'
  get 'posts/result' 
  root 'posts#index'
  get 'posts/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
