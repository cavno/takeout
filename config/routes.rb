Takeout::Application.routes.draw do

	get "carts/index"
	get 'tags/:tag', to:'products#index', as: :tag
	resources :line_items


	root to: 'store#home'
	resources :users
	resources :sessions, only:[:new, :create, :destroy]
	resources :products
	resources :carts
	resources :sellers
	resources :shops

	match '/signup', to:'users#new'
	match '/signin', to:'sessions#new'
	match '/signout', to:'sessions#destroy', via: :delete

end
