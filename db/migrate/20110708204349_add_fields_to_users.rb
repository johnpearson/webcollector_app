class AddFieldsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :company, :string
    add_column :users, :occupation, :string
    add_column :users, :location, :string
  end

  def self.down
    remove_column :users, :company, :string
    remove_column :users, :occupation, :string
    remove_column :users, :location, :string
  end
end
