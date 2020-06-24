Rails.application.routes.draw do
  get 'pages/home'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :users, :only => [:show]
end