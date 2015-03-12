Rails.application.routes.draw do
  

  
  resources :divisions 

  resources :trackingsheets
	
	resources :processmasters

  resources :proces, :path => "process" #Url Aliasing from proces ->  process
  
   resources :styles

  resources :usertypes

  resources :users

  devise_for :users, :skip => [:registrations, :sessions]
  
	as :trackingsheet do
			get "get_history"=> "trackingsheets#get_history", :as => :get_history
      get "get_comments"=> "trackingsheets#get_comments", :as => :get_comments
	end

	as :style do
			get "get_styles"=> "styles#get_styles", :as => :get_styles
	end
  as :user do
    get "/login" => "devise/sessions#new", :as => :new_user_session
    post "/login" => "devise/sessions#create", :as => :user_session
    get "/logout" => "devise/sessions#destroy", :as => :destroy_user_session
		get "custom_search"=> "users#custom_search", :as => :custom_search
		get "get_users"=> "users#get_users", :as => :get_users
		#get "/:id/edit" => "users#edit", :as => :edit_user_path
		#delete "/logout" => "devise/sessions#destroy", :as => :destroy_user_session
  end
  
	root :to => 'home#index'
end
