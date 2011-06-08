class UsersController < ApplicationController
  before_filter :authenticate_user!
  # The Users Controller handles all of the page requests for Users
  
  def show
    @user = current_user
    @folder = Folder.new
    @folders = @user.folders
    @title = current_user.email
  end
end