class CreateShoppers < ActiveRecord::Migration
  def change
    create_table :shoppers do |t|
    	t.string :email
    	t.string :phone_number

      t.timestamps
    end
  end
end
