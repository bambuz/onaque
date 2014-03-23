class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.belongs_to :app
      t.belongs_to :function
      t.boolean :valueboolean
      t.float :valuenumber
      t.string :valuestring

      t.timestamps
    end
  end
end
