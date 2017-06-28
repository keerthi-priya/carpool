class CreateFeeds < ActiveRecord::Migration[5.1]
  def change
    create_table :feeds do |t|
    	t.string :message

      t.timestamps :default => Time.now
    end
  end
end
