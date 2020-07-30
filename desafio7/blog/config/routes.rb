Rails.application.routes.draw do
  get 'posts/new'
  post 'posts/create'
  get 'pages/index'
  get 'pages/posts'
  get 'posts/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
