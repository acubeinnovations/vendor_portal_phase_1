Rails.application.routes.draw do
  

  
  resources :samples

  resources :submarkets

  resources :markets

  resources :brands

  resources :referencestyles

  resources :productcategories

  resources :seasons

  resources :trackingsheetdocuments

  resources :trackingsheetimages

  resources :costsheets

  resources :testings

  resources :hardwares

  resources :components

  resources :divisions 

  resources :trackingsheets
	
	resources :processmasters

  resources :proces, :path => "process" #Url Aliasing from proces ->  process
  
   resources :styles

  resources :usertypes

  resources :users

  devise_for :users, :skip => [:registrations, :sessions]
	as :trackingsheetdocument do
			get "deletetsdoc"=> "trackingsheetdocuments#deletetsdoc", :as => :deletetsdoc
      
	end
  
	as :trackingsheetimage do
			get "deletetsimg"=> "trackingsheetimages#deletetsimg", :as => :deletetsimg
      
	end
  
  
  
	as :trackingsheet do
			get "get_history"=> "trackingsheets#get_history", :as => :get_history
      get "get_comments"=> "trackingsheets#get_comments", :as => :get_comments
			get "lockme"=> "trackingsheets#lockme", :as => :lockme
			get "tocsv"=> "trackingsheets#tocsv", :as => :tocsv
	end
	as :costsheet do
			get "ajaxcreate_costsheets"=> "costsheets#ajaxcreate_costsheets", :as => :ajaxcreate_costsheets
      get "deletetscst"=> "costsheets#deletetscst", :as => :deletetscst
     
	end
	as :testing do
			get "ajaxcreate_testings"=> "testings#ajaxcreate_testings", :as => :ajaxcreate_testings
      get "deletetstst"=> "testings#deletetstst", :as => :deletetstst
     
	end
	as :hardware do
			get "ajaxcreate_hardwares"=> "hardwares#ajaxcreate_hardwares", :as => :ajaxcreate_hardwares
      get "deletetshrd"=> "hardwares#deletetshrd", :as => :deletetshrd
      
     
	end
	as :component do
			get "ajaxcreate_components"=> "components#ajaxcreate_components", :as => :ajaxcreate_components
      get "deletetscmp"=> "components#deletetscmp", :as => :deletetscmp
     
	end
	as :sample do
			get "ajaxcreate_samples"=> "samples#ajaxcreate_samples", :as => :ajaxcreate_samples
      get "deletetssmp"=> "samples#deletetssmp", :as => :deletetssmp
     
	end
	as :style do
			get "get_styles"=> "styles#get_styles", :as => :get_styles
	end
	as :season do
			get "ajaxcreate_seasons"=> "seasons#ajaxcreate_seasons", :as => :ajaxcreate_seasons
     
	end
	as :productcategory do
			get "ajaxcreate_productcategories"=> "productcategories#ajaxcreate_productcategories", :as => :ajaxcreate_productcategories
     
	end
	as :referencestyle do
			get "ajaxcreate_referencestyles"=> "referencestyles#ajaxcreate_referencestyles", :as => :ajaxcreate_referencestyles
     
	end
	as :brand do
			get "ajaxcreate_brands"=> "brands#ajaxcreate_brands", :as => :ajaxcreate_brands
     
	end
	as :market do
			get "ajaxcreate_markets"=> "markets#ajaxcreate_markets", :as => :ajaxcreate_markets
     
	end
	as :submarket do
			get "ajaxcreate_submarkets"=> "submarkets#ajaxcreate_submarkets", :as => :ajaxcreate_submarkets
     
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
