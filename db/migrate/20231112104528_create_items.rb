class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.references :collection, null: false, foreign_key: true
      t.string :name
      t.string :tags, array: true, default: []
      t.string :custom_str1
      t.string :custom_str2
      t.string :custom_str3
      t.integer :custom_int1
      t.integer :custom_int2
      t.integer :custom_int3
      t.boolean :custom_bool1
      t.boolean :custom_bool2
      t.boolean :custom_bool3
      t.text :custom_text1
      t.text :custom_text2
      t.text :custom_text3
      t.datetime :custom_date1
      t.datetime :custom_date2
      t.datetime :custom_date3

      t.timestamps
    end
  end
end
