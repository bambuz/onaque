class Changecolumnapps < ActiveRecord::Migration
  def change
  	rename_column :apps, :os_id, :operatingsystem_id
  end
end
