# This migration comes from plazr_store (originally 20121114200523)
class CreatePlazrStoreFeedbackStores < ActiveRecord::Migration
  def change
    create_table :plazr_store_feedback_stores do |t|
      t.text :comment
      t.integer :rating, :null => false
      t.references :user, :null => false

      t.timestamps
    end
    add_index :plazr_store_feedback_stores, :user_id
  end
end
