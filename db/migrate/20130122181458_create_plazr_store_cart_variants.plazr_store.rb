# This migration comes from plazr_store (originally 20121114174419)
class CreatePlazrStoreCartVariants < ActiveRecord::Migration
  def change
    create_table :plazr_store_cart_variants do |t|
      t.string :state, :null => false, :default => "pending" 
      t.integer :amount, :null => false, :default => 0
      t.integer :cart_id, :null => false
      t.integer :variant_id, :null => false

      t.timestamps
    end

    add_index :plazr_store_cart_variants, [:cart_id, :variant_id], :unique => true
  end
end
