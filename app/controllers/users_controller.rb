class UsersController < ApplicationController
  def new
    @user = User.new 
  end

  def create
    User.create!(
      username: params[:user][:username],
      passwork: params[:user][:password]
    )
    
  end
end
