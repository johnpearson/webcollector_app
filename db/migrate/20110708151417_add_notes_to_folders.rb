class AddNotesToFolders < ActiveRecord::Migration
  def self.up
    add_column :folders, :notes, :string
  end

  def self.down
    remove_column :folders, :notes, :string
  end
end
