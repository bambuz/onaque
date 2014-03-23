class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.integer :app_id
      t.integer :function_id
      t.boolean :valueboolean
      t.float :valuenumber
      t.string :valuestring

      t.timestamps
    end
  end
end
