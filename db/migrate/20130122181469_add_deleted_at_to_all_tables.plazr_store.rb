# This migration comes from plazr_store (originally 20121127155946)
class AddDeletedAtToAllTables < ActiveRecord::Migration
  def change
    tables = ActiveRecord::Base.connection.tables - ["schema_migrations"]
    tables.each do |table|
        add_column table, :deleted_at, :datetime
    end
  end
end
