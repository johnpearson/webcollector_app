class Folder < ActiveRecord::Base
  attr_accessible :name, :content, :notes
  
  # Folders belong to a user
  belongs_to :user
  
  # Validations
  validates :content, :presence => true
  validates :name, :presence => true
  validates :user_id, :presence => true
  
end
