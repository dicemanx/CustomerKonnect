class AddPasswordPasswordSaltHas < ActiveRecord::Migration
  def change
  	add_column :businesses, :password_salt, :string
  	add_column :businesses, :password_hash, :string
  end
end
