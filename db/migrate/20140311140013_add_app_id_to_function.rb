class AddAppIdToFunction < ActiveRecord::Migration
  def change
    add_reference :functions, :app, index: true
  end
end
