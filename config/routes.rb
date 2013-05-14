Monilog::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
  
  resources :values
  
  resources :counters

  resources :counters do
    resources :values
  end

  resources :sites do
    resources :counters do
	resources :value
    end
  end

end