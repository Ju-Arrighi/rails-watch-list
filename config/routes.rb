Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists, only:[:index, :create, :show] do
    resources :reviews, only: :create
    resources :bookmarks, only:[:new, :create]
  end
  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
