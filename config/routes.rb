Rails.application.routes.draw do

  namespace :api do
  get 'photos/create'
  end

  namespace :api do
  get 'photos/destroy'
  end

  namespace :api do
  get 'photos/index'
  end

  namespace :api do
  get 'photos/show'
  end

  namespace :api do
  get 'photos/update'
  end

  root "static_pages#root"

  namespace :api, defaults: { format: :json } do
    resources :users, only: [:create, :update, :destroy, :show]
    resources :posts, only: [:create, :update, :destroy, :index]
    resources :requestings, only: [:create, :destroy]
    resources :photos, only: [:create, :destroy, :index, :show]
    resource :session, only: [:create, :destroy, :show]
  end

  get '/api/posts/timeline/:id', to: 'api/posts#timeline'

  get '/api/search/:query', to: 'api/searchables#search'

  get '/api/users/button/:id1/:id2', to: 'api/users#button'

  delete '/api/requestings/:id1/:id2', to: 'api/requestings#destroy'

  post 'api/friendships/:id1/:id2', to: 'api/friendships#create'

  delete 'api/friendships/:id1/:id2', to: 'api/friendships#destroy'


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
