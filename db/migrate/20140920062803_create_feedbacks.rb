class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
    	t.string :description
    	t.string :status
    	t.belongs_to :shopper
    	t.belongs_to :business
    	t.boolean :is_positive

      t.timestamps
    end
  end
end
