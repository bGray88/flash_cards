Rails.application.routes.draw do
  root   "welcome#index"

  get    '/register',  to: 'users#new'
  post   '/users',     to: 'users#create'
  get    '/dashboard', to: 'users#show', as: 'user'
  get    '/login',     to: 'login#new'
  post   '/login',     to: 'login#create'
  delete '/logout',    to: 'login#destroy'
  get    '/game',      to: 'game#show',  as: 'game'
  patch  '/answer',    to: 'game#update', as: 'answer'
end
