class AddIndexToSchemaMigrations < ActiveRecord::Migration
  def change
    add_index :schema_migrations, :version
  end
end
