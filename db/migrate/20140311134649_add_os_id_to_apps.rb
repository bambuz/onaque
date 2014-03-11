class AddOsIdToApps < ActiveRecord::Migration
  def change
    add_reference :apps, :os, index: true
  end
end
