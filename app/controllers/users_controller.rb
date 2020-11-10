class UsersController < ApplicationController
  def member
    @users = User.all
  end
    
  def show
    @user = User.find(params[:user_id])
  end

  def new
    @user = User.new 
  end
  
  def edit
    @user = User.find(params[:user_id])
  end

  def update
    user = User.find(params[:user_id])
    user.update!(
        username: params[:user][:username],
        password: params[:user][:password]
    )
    redirect_to users_path
  end

  def destroy
    user = User.find(params[:user_id])
    User.destroy(params[:user_id])
    redirect_to users_path
  end
  
  def create
    User.create!(user_params)
    redirect_to users_path
  end


  private

  def user_params
    return params.require(:user).permit(:username, :password)
  end

end
