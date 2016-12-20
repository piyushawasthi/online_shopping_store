Rails.application.routes.draw do

  get '/shop' => 'storefront#index'
  get '/home' => 'storefront#home'

  devise_for :users
  namespace :admin do
    resources :products
    resources :brands
    resources :categories
    get 'dashboard/index'
    match "/dashboard/:id", to: "dashboard#admin_delete", as: "line_item", :via => :delete
  end

  resources :orders, only: [:new, :create, :show]
  #added destroy to be able to delete line item
  resources :line_items, only: [:create, :destroy, :update]
  match "/line_item/:id", to: "line_items#user_delete", as: "user_line_item", :via => :delete
  #changed resources to singular resource so that the :id param in url is not in the url (for security)
  resource :cart, only:[:edit, :update, :destroy]
  root 'storefront#home'
end