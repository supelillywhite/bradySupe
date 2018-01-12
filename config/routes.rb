Rails.application.routes.draw do
  resources :comments
  get 'donate', to: 'pages#donate'

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :blogs

  root to: "blogs#index"
end
