Rails.application.routes.draw do

  devise_for :users
  root 'events#index'
  # Routes for the Event resource:
  # CREATE
  get('/events/new', { :controller => 'events', :action => 'new' })
  get('/create_event', { :controller => 'events', :action => 'create' })

  # READ
  get('/events', { :controller => 'events', :action => 'index' })
  get('/events/:id', { :controller => 'events', :action => 'show' })
  get('/my_events', { :controller => 'events', :action => 'my_events' })

  # UPDATE
  get('/events/:id/edit', { :controller => 'events', :action => 'edit' })
  get('/update_event/:id', { :controller => 'events', :action => 'update' })

  # DELETE
  get('/delete_event/:id', { :controller => 'events', :action => 'destroy' })
  #------------------------------

  # Routes for the Expense_owed resource:
  # CREATE
  get('/expense_oweds/new', { :controller => 'expense_oweds', :action => 'new' })
  get('/create_expense_owed', { :controller => 'expense_oweds', :action => 'create' })

  # READ
  get('/expense_oweds', { :controller => 'expense_oweds', :action => 'index' })
  get('/expense_oweds/:id', { :controller => 'expense_oweds', :action => 'show' })

  # UPDATE
  get('/expense_oweds/:id/edit', { :controller => 'expense_oweds', :action => 'edit' })
  get('/update_expense_owed/:id', { :controller => 'expense_oweds', :action => 'update' })

  # DELETE
  get('/delete_expense_owed/:id', { :controller => 'expense_oweds', :action => 'destroy' })
  #------------------------------

  # Routes for the Expense resource:
  # CREATE
  get('/expenses/new', { :controller => 'expenses', :action => 'new' })
  get('/create_expense', { :controller => 'expenses', :action => 'create' })

  # READ
  get('/expenses', { :controller => 'expenses', :action => 'index' })
  get('/expenses/:id', { :controller => 'expenses', :action => 'show' })

  # UPDATE
  get('/expenses/:id/edit', { :controller => 'expenses', :action => 'edit' })
  get('/update_expense/:id', { :controller => 'expenses', :action => 'update' })

  # DELETE
  get('/delete_expense/:id', { :controller => 'expenses', :action => 'destroy' })
  #------------------------------

  # Routes for the Event_participant resource:
  # CREATE
  get('/event_participants/new', { :controller => 'event_participants', :action => 'new' })
  get('/create_event_participant', { :controller => 'event_participants', :action => 'create' })

  # READ
  get('/event_participants', { :controller => 'event_participants', :action => 'index' })
  get('/event_participants/:id', { :controller => 'event_participants', :action => 'show' })

  # UPDATE
  get('/event_participants/:id/edit', { :controller => 'event_participants', :action => 'edit' })
  get('/update_event_participant/:id', { :controller => 'event_participants', :action => 'update' })

  # DELETE
  get('/delete_event_participant/:id', { :controller => 'event_participants', :action => 'destroy' })
  #------------------------------

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
