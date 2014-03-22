class Changetablenameos < ActiveRecord::Migration
  def change
  	rename_table :operatingsystem, :operatingsystems
	end
end
