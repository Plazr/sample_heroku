# This migration comes from plazr_store (originally 20121114113232)
class CreatePlazrStorePrototypes < ActiveRecord::Migration
  def change
    create_table :plazr_store_prototypes do |t|
      t.string :name, :null => false
      # t.datetime :deleted_at

      t.timestamps
    end
  end
end
