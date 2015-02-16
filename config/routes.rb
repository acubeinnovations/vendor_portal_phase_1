Rails.application.routes.draw do
  
  as :proces do
          get "/process" => "proces#index", :as => :process
          get "/process/new" => "proces#new", :as => :new
  end
  
   resources :proces

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
  
	root :to => 'proces#index'
end
