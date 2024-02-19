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

  get 'shops/accommodation' => 'shops#accommodation'
  get 'shops/shopping_mall' => 'shops#shopping_mall'
  get 'shops/activity' => 'shops#activity'

  get 'favorite' => 'revues#index'

  resources :shops, only: [:show] do
    resource :revues, only: [:create, :destroy]
  end

  get 'customer/my_page' => 'customers#show'
  get 'customer/confirmation' => 'customers#confirmation'
  get 'customer/tweet' => 'customers#index'
  resources :customers, only: [:edit, :update, :destroy]

  get 'other_users/:id' => 'users#other_users' , as: :other
  #フォロー系
  resources :users do

    resource :follows, only: [:create, :destroy]
    member do
      get 'followings'
      get 'followers'
    end
  end




  resources :inquirys, only: [:index, :create]
  get 'thanks' => 'inquirys#thanks'

  resources :registrations
  resources :sessions
  get 'everyone_tweet' => 'tweets#everyone_tweet'
  resources :tweets, only: [:new, :create, :edit, :update, :destroy] do
    resource :nices, only: [:create, :destroy]
  end

  get 'nices_index' => 'nices#index'



end

namespace :admin do

  get '' => 'homes#top'


  get 'shops/accommodation' => 'shops#accommodation'
  get 'shops/shopping_mall' => 'shops#shopping_mall'
  get 'shops/activity' => 'shops#activity'
  resources :shops
  resources :inquirys, only: [:index]
  resources :users
  resources :tweets

end







end
