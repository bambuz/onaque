class RemoveColumns3 < ActiveRecord::Migration
  def self.up
    remove_column :values, :valueboolean
  end
end
