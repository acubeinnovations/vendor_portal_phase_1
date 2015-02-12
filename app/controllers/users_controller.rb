class UsersController < ApplicationController
#before_filter :authenticate_user!
before_filter :admin_only, :except => :show
  def index
    @users = User.all
 end

  def show
    @user = User.find(params[:id])
  end
  

  
  
  #def show
   #   @user = User.find(params[:id])
    #  if current_user.userrole.designer?
     #   unless @user == current_user
      #    redirect_to :back, :alert => "Access denied."
       # end
    #  end
  #  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, :flash => { :success => 'User was successfully created.' }
    else
      render :action => 'new'
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      sign_in(@user, :bypass => true) if @user == current_user
      redirect_to @user, :flash => { :success => 'User was successfully updated.' }
    else
      render :action => 'edit'
    end
  end
  
  def admin_only
      if current_user.email=="admin@vendor.com"
        redirect_to :back, :alert => "Access denied."
      end
    end
	def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation,:firstname,:lastname,:userrole)
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path, :flash => { :success => 'User was successfully deleted.' }
  end
end
