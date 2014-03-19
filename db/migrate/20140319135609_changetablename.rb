class Changetablename < ActiveRecord::Migration
  def change
  	rename_table :os, :operatingsystem
	end
end
