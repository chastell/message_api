Rails.application.routes.draw do
  resources :access_tokens, only: :create
  resources :messages, only: [:index, :show]
end
