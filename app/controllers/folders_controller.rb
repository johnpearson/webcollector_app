class FoldersController < ApplicationController
    before_filter :authenticate_user!

    # The new action takes in new folder data from the form in the view
    def new
      @folder = Folder.new
    end

    # The create action creates a new folder through the current user
    def create
      @folder = current_user.folders.build(params[:folder])
      if @folder.save
        flash[:notice] = "Folder Created!"
        redirect_to user_path
      else
        render root_path
      end
    end

    # The index action shows all the folders created by the user
    def index
      @folders = Folder.all.paginate(:page => params[:page], :per_page => 3)
      @title = "Folders"
    end

    # The edit action allows users to edit their folders by changing the 
    # content or the name
    def edit
      @folder = Folder.find(params[:id])
    end

    # The update action updates the current folder in the database
    def update
      @folder = Folder.find(params[:id])
      if @folder.update_attributes(params[:folder])
        flash[:notice] = "Folder Updated!"
        redirect_to folders_path
      else
        render root_path
      end
    end
    
    def destroy
      @folder = Folder.find(params[:id])
      @folder.destroy
      flash[:success] = "Folder deleted."
      redirect_to user_path
    end
      
  end
  