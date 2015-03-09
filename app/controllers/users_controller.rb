class UsersController < ApplicationController
#for authentication
before_filter :authenticate_user!

#for checking user roles
before_filter :admin_only, :except =>  [:edit ] 
layout 'vendor_portal'
  def index 
    @users = User.all
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
