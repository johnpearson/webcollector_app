class UserController < ApplicationController
  before_filter :authenticate_user!
  # The Users Controller handles all of the page requests for Users
  
  def show
    @user = current_user
    @folder = Folder.new
    @folders = @user.folders.paginate(:page => params[:page], :per_page => 3)
    @title = current_user.name
  end
  
  def index
    @user = current_user
    @folders = (@user.folders).sort!{|t1, t2| t1.name <=> t2.name}
    @title = current_user.name
  end
end