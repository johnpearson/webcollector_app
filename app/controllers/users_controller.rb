class UsersController < ApplicationController
  # The Users Controller handles all of the page requests for Users
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
end