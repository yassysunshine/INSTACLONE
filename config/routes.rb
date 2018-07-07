Rails.application.routes.draw do
  resources :contacts
  get 'sessions/new'
  root to: 'sessions#new'
  resources :blogs
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/inbox"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
