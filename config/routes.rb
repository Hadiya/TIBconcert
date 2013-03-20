TibConcert::Application.routes.draw do

  resources :sessions 

  get "fans/create"
  get "fans/tib_login"
  get "fans/tib_logina"
  get "fans/new"
  get "fans/exam"
  
  post "fans/create"
  post "fans/new"
  post "fans/tib_login"
  post "fans/tib_logina"
  get "artist/create"
  get "artist/artist_band"
  get "artist/artist_success" 
  post "artist/create"
  post "artist/artist_band"

  #delete "sessions/destroy"
  get '/logout' => "sessions#destroy", :as => "logout"
#  resources :sessions
# resources :sessions, :only [:new, :create, :destroy ]
 
# match '/signout', to: 'sessions#destroy', via: :delete   

  # The priority is based upon order of creation:
  # first created -> highest priority.

 # Sample of regular route:
match 'products/:id' => 'catalog#view'
match '/auth/:provider/callback' => 'facebook#create'
match 'auth/failure' => redirect('/')
match 'signout' => 'facebook#destroy'

match '/auth/:provider/callback' => 'ab#create'

  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
