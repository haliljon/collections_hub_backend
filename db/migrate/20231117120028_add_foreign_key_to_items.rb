class AddForeignKeyToItems < ActiveRecord::Migration[7.1]
  def change
    add_reference :items, :collection, null: false, foreign_key: true
  end
end
