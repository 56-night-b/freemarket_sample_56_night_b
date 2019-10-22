Rails.application.routes.draw do
  root :to => 'main#index'
  get 'users/mypage' => 'users#mypage'
  # resources :users, only: :show
  resources :main
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
