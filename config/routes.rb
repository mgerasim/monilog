Monilog::Application.routes.draw do
  authenticated :user do
    root :to => 'sites#index'
  end
  root :to => "sites#index"
  devise_for :users
  resources :users
  
  resources :values
  
  resources :counters

  resources :counters do
    resources :values
  end

  resources :sites do
#    get 'monit', :on => :collection
    resources :counters do
	resources :value
    end
  end

  match 'sites/:id/monit', :to => 'sites#monit', :as => 'sites_monit'
 
end