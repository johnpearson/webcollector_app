class FoldersController < ApplicationController
    before_filter :authenticate_user!

    # The new action takes in new folder data from the form in the view
    def new
      @user = current_user
      @folder = Folder.new
    end

    # The create action creates a new folder through the current user
    def create
      @folder = current_user.folders.build(params[:folder])
      if @folder.save
        flash[:notice] = "Folder Created!"
        redirect_to folders_path
      else
        redirect_to new_folder_path
      end
    end

    # The index action shows all the folders created by the user
    # The index action also handles search requests by gathering all of the
    # folders into a temp variable and then iterating across the folders
    # with a search parameter, if the name equals the search criteria
    # the @folders variable is populated and sent to index view
    def index
      @user = current_user
      if params[:search]
        @temp_folders = @user.folders
        @folders_array = []
        @temp_folders.each do |folder|
          @search = "#{params[:search]}"
          if folder.name == @search
            @folders_array.push folder
          end
        end
        @folders = @folders_array.paginate(:page => params[:page], :per_page => 2)
      else
        @folders = @user.folders.paginate(:page => params[:page], :per_page => 2)
      end
      @title = "Your Folders"
    end

    # The edit action allows users to edit their folders by changing the 
    # content or the name
    def edit
      @user = current_user
      @folder = Folder.find(params[:id])
    end

    # The update action updates the current folder in the database
    def update
      @folder = Folder.find(params[:id])
      if @folder.update_attributes(params[:folder])
        flash[:notice] = "Folder Updated!"
        redirect_to folder_path
      else
        redirect_to folders_path
      end
    end
    
    def destroy
      @folder = Folder.find(params[:id])
      @folder.destroy
      flash[:success] = "Folder deleted."
      redirect_to folders_path
    end
    
    def show
      @user = current_user
      @folder = Folder.find(params[:id])
    end
      
  end
  