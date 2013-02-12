# This migration comes from plazr_store (originally 20121114180735)
class CreatePlazrStorePromotions < ActiveRecord::Migration
  def change
    create_table :plazr_store_promotions do |t|
      t.string :name, :null => false
      t.text :description
      t.string :value, :null => false
      t.string :min_filter
      t.date :starts_at, :null => false
      t.date :expires_at
      t.references :discount_type, :null => false

      t.timestamps
    end
    add_index :plazr_store_promotions, :discount_type_id
  end
end
