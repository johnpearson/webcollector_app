module ApplicationHelper
  # Sets base title
  def title
    base_title = "Briefspace"
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
  
  def new_button
    new_button = image_tag("new_button.png", :alt => "Create New Folder")
  end
  
  def profile_button
    profile_button = image_tag("profile_button.png", :alt => "Your Profile")
  end
  
  def folders_button
    folders_button = image_tag("folders_button.png", :alt => "View Folders")
  end
  
  # Gravatar image accessible by all users to attach an image to their email
  def gravatar_for(current_user, options = { :size => 30 })
    gravatar_image_tag(current_user.email.downcase, :alt => current_user.email,
                                                    :class => 'gravatar',
                                                    :gravatar => options)
  end
end
