# This migration comes from plazr_store (originally 20121114152125)
class CreatePlazrStoreVariantPropertyValues < ActiveRecord::Migration
  def change
    create_table :plazr_store_variant_property_values do |t|
      t.string :name, :null => false
      t.string :presentation
      t.references :variant_property, :null => false

      t.timestamps
    end
    add_index :pr_st_vrt_property_v, :variant_property_id
  end
end
