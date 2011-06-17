module ApplicationHelper
  # Sets base title
  def title
    base_title = "Web Collector"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  # Button definitions for links in header
  def edit_button
    edit_button = image_tag("edit_button.png", :alt => "Edit Profile")
  end
  
  def out_button
    out_button = image_tag("out_button.png", :alt => "Sign Out")
  end
  
  def new_folder
    new_folder = image_tag("new_folder.png", :alt => "Create New Folder")
  end
end
