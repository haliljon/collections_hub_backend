class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.references :user, foreign_key: true
      t.references :item, foreign_key: true
      t.integer :like_count, default: 0
      t.timestamps
    end
  end
end
