Rails.application.routes.draw do
  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :candidates
      resources :voters
      resources :votes
    end
  end

  # get '/api/v1/voters/create'
  # get '/api/v1/voters/show'
  # get '/api/v1/voters/update'
  # get '/api/v1/candidates/index'
  # get '/api/v1/votes/index'
  # get '/api/v1/votes/candidate_id'
  # get '/api/v1/votes/voter_id'
  # get '/api/v1/candidates/show'


  get 'voters/create'
  get 'voters/show'
  get 'voters/destroy'
  get 'voters/index'
  get 'voters/update'
  get 'votes/index'
  get 'votes/candidate_id'
  get 'votes/voter_id'
  get 'candidates/show'
  get 'candidates/index'
  get 'candidates/destory'
  get 'candidates/create'

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
