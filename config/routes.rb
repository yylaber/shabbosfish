Rails.application.routes.draw do
  # get 'order_items/create'

  # get 'order_items/update'

  # get 'order_items/destroy'

  # get 'carts/show' 

  # get 'products/index'


  # Rails.application.routes.draw do
    # resources :products, only: [:index, :show] 
    # resource :carts, only: [:show]
    # resources :carts
    get 'carts/' => 'carts#show'
    post 'carts/' => 'carts#show'
    
        # resource :carts, only: [:show]
    # resources :order_items, only: [:create, :update, :destroy]
    resources :order_items
    # get 'order_items' => 'order_items/create'
    root "products#index"
    
    get '/' => 'product#index'
  # end 


  # resources :orders


  resources :products

  # resources :charges

  get 'charges/index'

  get 'charges/' => 'charges#new'
  get 'charges/new' => 'charges#new'
  get 'charges/create' => 'charges#create'

  # post 'charges/' => 'charges#new'
  # post 'charges/new' => 'charges#new'
  post 'charges' => 'charges#create'
  # # get 'home/index'

  # root 'products#index'
  devise_for :users

  # devise_for :admins 
  
  # resources :charges 


  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
