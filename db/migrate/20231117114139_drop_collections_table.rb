class DropCollectionsTable < ActiveRecord::Migration[6.0]
  def up
    drop_table :collections
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
