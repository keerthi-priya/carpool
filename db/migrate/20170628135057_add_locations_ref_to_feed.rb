class AddLocationsRefToFeed < ActiveRecord::Migration[5.1]
  def change
    add_reference :feeds, :locations, foreign_key: true
  end
end
