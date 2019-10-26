Rails.application.routes.draw do
  devise_for :users
  root :to => 'main#index'
  get 'users/mypage' => 'users#mypage'
  get 'users/mypage/notice' => 'users#notice'
  get 'users/mypage/to_do' => 'users#to_do'
  get 'users/mypage/nice' => 'users#nice'
  get 'users/mypage/selling' => 'users#selling'
  get 'users/mypage/transacting' => 'users#transacting'
  get 'users/mypage/sold' => 'users#sold'
  get 'users/mypage/buy_products/transacting' => 'users#buy_transacting'
  get 'users/mypage/buy_products/transacted' => 'users#buy_transacted'
  get 'users/mypage/news' => 'users#news'
  get 'users/mypage/reviews' => 'users#reviews'
  # resources :users, only: :show
  resources :main
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
