Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'user/travellers/dashboard', to: 'bookings#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :activities, only: [:new, :create, :index, :show, :edit]
get "guide_dashboard", to: "users#guide_dashboard"

get "traveller_dashboard", to: "users#traveller_dashboard"
patch "activities/:id", to: "activities#update"
end
