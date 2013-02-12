# This migration comes from plazr_store (originally 20121114112719)
class CreatePlazrStoreStoreCategories < ActiveRecord::Migration
  def change
    create_table :plazr_store_store_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
