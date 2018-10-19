Rails.application.routes.draw do

  devise_for :users

  root to: 'items#index'
  resources :items

  # usersルートはshowしか使わないよう設定
  resources :users, only: :show


end
