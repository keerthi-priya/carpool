class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :mail_id   	
      	t.timestamps :default => Time.now
    end
  end
end