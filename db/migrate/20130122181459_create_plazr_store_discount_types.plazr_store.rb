# This migration comes from plazr_store (originally 20121114180446)
class CreatePlazrStoreDiscountTypes < ActiveRecord::Migration
  def change
    create_table :plazr_store_discount_types do |t|
      t.string :name, :null => false
      t.text :description
      t.integer :scope 
      t.integer :type_id

      t.timestamps
    end
  end
end
