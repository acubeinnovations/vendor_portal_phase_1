class UsersController < ApplicationController
#for authentication
before_filter :authenticate_user!

#for checking user roles
before_filter :admin_only, :except =>  [:edit,:custom_search ] 
layout 'vendor_portal'
  def index 
	    @users = User.search(params[:searchterm]).paginate(:page => params[:page], :per_page =>15)
			if !params[:page].blank?
			@slno=((params[:page].to_i - 1) * 15) + 1
		else
			@slno=1
		end
 	end

  def show
    @user = User.find(params[:id])
		
		redirect_to users_url
  end
  
  def new
    @user = User.new
  end

  def edit
		 @user = User.find(params[:id])
		 accesscurrentuserandadmin()
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to users_url, :flash => { :success => 'User was successfully created.' }
    else
      render :action => 'new'
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      sign_in(@user, :bypass => true) if @user == current_user
      redirect_to users_url, :flash => { :success => 'User was successfully updated.' }
    else
      render :action => 'edit'
    end
  end
  def custom_search
	 	@vendors = User.any_of({email: /#{params[:term]}/i },{firstname: /#{params[:term]}/i }).where(:userrole=>"vendor")
     render json: Hash[@vendors.map { |v| [v[:email].to_s ,v[:lastname]+' '+v[:firstname].to_s+'( '+v[:email]+' )'.to_s ] }]
	end
	def get_users
		@users = User.where(:division_id=>params[:division_id],:userrole=>params[:userrole])
    render json: Hash[@users.map { |v| [ v[:id].to_s, v[:lastname]+' '+v[:firstname].to_s ] } ]
	end
 def admin_only
    if current_user.userrole!=VendorPortal::Application.config.admin
      redirect_to root_path, :alert => "Access denied."
    end
  end
	def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation,:firstname,:lastname,:userrole,:division_id)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, :flash => { :success => 'User was successfully deleted.' }
  end
	def accesscurrentuserandadmin
		if @user != current_user && current_user.userrole!=VendorPortal::Application.config.admin
        redirect_to root_path, :alert => "Access denied."
		else
				return  true
    end
	end
end
