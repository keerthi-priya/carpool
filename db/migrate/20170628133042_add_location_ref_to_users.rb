class AddLocationRefToUsers < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :locations, foreign_key: true
  end
end
