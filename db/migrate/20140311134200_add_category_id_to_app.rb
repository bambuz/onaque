class AddCategoryIdToApp < ActiveRecord::Migration
  def change
    add_reference :apps, :category, index: true
  end
end
