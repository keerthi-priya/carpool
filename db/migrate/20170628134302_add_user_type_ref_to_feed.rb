class AddUserTypeRefToFeed < ActiveRecord::Migration[5.1]
  def change
    add_reference :feeds, :user_types, foreign_key: true
  end
end
