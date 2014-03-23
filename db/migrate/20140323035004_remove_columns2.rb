class RemoveColumns2 < ActiveRecord::Migration
  def self.up
    remove_column :functions, :category_id
  end
end
