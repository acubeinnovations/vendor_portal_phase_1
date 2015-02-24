Rails.application.routes.draw do
  

  
  resources :divisions 

  resources :trackingsheets do
		collection do
			get "vendor_versions"
		end
	end

  resources :processmasters

  resources :proces, :path => "process" #Url Aliasing from proces ->  process
  
   resources :styles

  resources :usertypes

  resources :users

  devise_for :users, :skip => [:registrations, :sessions]

  as :user do
    get "/login" => "devise/sessions#new", :as => :new_user_session
    post "/login" => "devise/sessions#create", :as => :user_session
    get "/logout" => "devise/sessions#destroy", :as => :destroy_user_session
		#get "/:id/edit" => "users#edit", :as => :edit_user_path
		#delete "/logout" => "devise/sessions#destroy", :as => :destroy_user_session
  end
  
	root :to => 'home#index'
end
