FriendCircle::Application.routes.draw do
  get "circles/new"

  get "users/new"

  get "users/show"

  get "users/index"

  get "users/edit"

  resources :users
  resources :circles
  resource :session
end
