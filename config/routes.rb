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

  get 'customer/my_page' => 'customers#show'
  get 'customer/confirmation' => 'customers#confirmation'
  get 'customer/tweet' => 'customers#index'
  resources :customers, only: [:edit, :update, :destroy, :updeta]

  resources :nices
  resources :follows

  resources :inquirys
  get 'thanks' => 'inquirys#thanks'

  resources :registrations
  resources :sessions
  resources :tweets
  get 'everyone_tweet' => 'tweets#everyone_tweet'


end

namespace :admin do

  get '' => 'homes#top'


  get 'shops/accommodation' => 'shops#accommodation'
  get 'shops/shopping_mall' => 'shops#shopping_mall'
  get 'shops/activity' => 'shops#activity'
  resources :shops
  resources :users
  resources :tweets
  resources :inquirys

end







end
