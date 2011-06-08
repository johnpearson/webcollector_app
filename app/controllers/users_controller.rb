class UsersController < ApplicationController
  before_filter :authenticate_user!
  # The Users Controller handles all of the page requests for Users
  
  def show
    @user = current_user
  end
end