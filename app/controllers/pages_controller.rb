class PagesController < ApplicationController
  # The Pages Controller handles all the static pages in this app
  
  # The home page is the root page for this app, it will basically just house the
  # sign-in page for the whole application
  def home
   @title = 'Home'
  end 
end