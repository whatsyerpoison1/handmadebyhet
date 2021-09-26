Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'macrames#index'
  resources :macrames, only: [:index, :show]
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
