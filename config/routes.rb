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
  get 'logout' => 'users#logout'
  get 'users/mypage/profile' => 'users#profile'
  get 'users/mypage/card' => 'users#card'
  get 'users/mypage/identification' => 'users#identification'

  resources :users do
    collection do
      get 'sign_up_memberinfo' 
      get 'sign_up_tel_number' 
      get 'sign_up_address' 
      get 'sign_up_payment' 
      post 'create'
      get 'sign_up_done'
    end
  end

  resources :main do
    collection do
      get 'product_purchase_confirmation'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
