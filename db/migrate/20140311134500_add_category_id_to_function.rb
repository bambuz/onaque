class AddCategoryIdToFunction < ActiveRecord::Migration
  def change
    add_reference :functions, :category, index: true
  end
end
