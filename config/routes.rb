FriendCircle::Application.routes.draw do
  resources :users
  resources :circles
  resource :session
  resources :posts


end
