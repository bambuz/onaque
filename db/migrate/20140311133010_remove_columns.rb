class RemoveColumns < ActiveRecord::Migration
  def self.up
    remove_column :apps, :category
  end
end
