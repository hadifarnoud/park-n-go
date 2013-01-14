class UsersController < ApplicationController
  # before_filter :authenticate_user! #update to CanCan
  respond_to :json, :xml

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
    Rails.logger.debug { "******** USER index *********" }
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user.build_address
    Rails.logger.debug { "******** USER NEW *********" }
  end

  
  def update
    authorize! :update, @user, :message => 'Not authorized as an administrator.'
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user], :as => :admin)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end
    
  def destroy
    authorize! :destroy, @user, :message => 'Not authorized as an administrator.'
    user = User.find(params[:id])
    unless user == current_user
      user.destroy
      redirect_to users_path, :notice => "User deleted."
    else
      redirect_to users_path, :notice => "Can't delete yourself."
    end
  end
end