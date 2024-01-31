Rails.application.routes.draw do

  root to: 'user/homes#top'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  # ユーザー側
 devise_for :users, skip: [:passwords], controllers: {
   registrations: "user/registrations",
   sessions: 'user/sessions'
 }

# 管理者側
  devise_for :admins, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

scope module: :user do

  get 'shops/accommodation' => 'shops#index'
  get 'shops/shopping_mall' => 'shops#shopping_mall'
  get 'shops/activity' => 'shops#activity'
  resources :shops, only: [:show]

  get 'user/my_page' => 'customers#show'
  get 'user/confirmation' => 'customers#confirmation'
  resources :customers, only: [:edit, :updeta]

  resources :nices
  resources :follows

  resources :inquirys
  get 'user/thanks' => 'users#thanks'

  resources :registrations
  resources :sessions

end

namespace :admin do

  get '' => 'homes#top'
  resources :sessions

  get 'shops/accommodation' => 'shops#accommodation'
  get 'shops/shopping_mall' => 'shops#shopping_mall'
  get 'shops/activity' => 'shops#activity'
  resources :shops
  resources :users
  resources :inquirys

end







end
