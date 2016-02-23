Rails.application.routes.draw do

    namespace :api do
     namespace :v1 do
       get '/customers/find', to: "customers_finder#show", defaults: { format: :json }
       get '/customers/find_all', to: "customers_finder#index", defaults: { format: :json }
       get '/customers/random', to: "random_customer#show", defaults: { format: :json }

       get '/merchants/find', to: "merchants_finder#show", defaults: { format: :json }
       get '/merchants/find_all', to: "merchants_finder#index", defaults: { format: :json }
       get '/merchants/random', to: "random_merchant#show", defaults: { format: :json }

       get '/invoices/find', to: "invoices_finder#show", defaults: { format: :json }
       get '/invoices/find_all', to: "invoices_finder#index", defaults: { format: :json }
       get '/invoices/random', to: "random_invoice#show", defaults: { format: :json }

       get '/items/find', to: "items_finder#show", defaults: { format: :json }
       get '/items/find_all', to: "items_finder#index", defaults: { format: :json }
       get '/items/random', to: "random_item#show", defaults: { format: :json }

       get '/invoice_items/find', to: "invoice_items_finder#show", defaults: { format: :json }
       get '/invoice_items/find_all', to: "invoice_items_finder#index", defaults: { format: :json }
       get '/invoice_items/random', to: "random_invoice_item#show", defaults: { format: :json }

       get '/transactions/find', to: "transactions_finder#show", defaults: { format: :json }
       get '/transactions/find_all', to: "transactions_finder#index", defaults: { format: :json }
       get '/transactions/random', to: "random_transaction#show", defaults: { format: :json }


       resources :customers, only: [:index, :show], defaults: {format: :json}


       resources :merchants, only: [:index, :show], defaults: {format: :json}
       resources :items, only: [:index, :show], defaults: {format: :json}
       resources :invoices, only: [:index, :show], defaults: {format: :json}
       resources :transactions, only: [:index, :show], defaults: {format: :json}
       resources :invoice_items, only: [:index, :show], defaults: {format: :json}
     end
   end
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
