# This migration comes from plazr_store (originally 20121114112830)
class CreatePlazrStoreCategoryConditions < ActiveRecord::Migration
  def change
    create_table :plazr_store_category_conditions do |t|
      t.text :description, :null => false

      t.timestamps
    end
  end
end
