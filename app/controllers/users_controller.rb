class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @user = User.new 
  end

  def create
    User.create!(user_params)
  end

  private

  def user_params
    return params.require(:user).permit(:username, :password)
  end

end
