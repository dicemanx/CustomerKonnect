class AddPasswordPasswordSalt < ActiveRecord::Migration
  def change
  	add_column :businesses, :password, :string
  	add_column :businesses, :password_confirmation, :string

  end
end
