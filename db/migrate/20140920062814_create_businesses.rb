class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
    	t.string :name
    	t.string :address
    	t.string :phone_number
    	t.string :email

      t.timestamps
    end
  end
end
