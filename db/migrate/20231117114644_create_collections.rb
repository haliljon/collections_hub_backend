class CreateCollections < ActiveRecord::Migration[7.1]
  def change
    create_table :collections do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :image_url, default: "https://www.logolynx.com/images/logolynx/d1/d1d94d61ed2befb68cd969fef19c868f.jpeg"
      t.string :custom_str1
      t.string :custom_str2
      t.string :custom_str3
      t.string :custom_int1
      t.string :custom_int2
      t.string :custom_int3
      t.string :custom_bool1
      t.string :custom_bool2
      t.string :custom_bool3
      t.string :custom_text1
      t.string :custom_text2
      t.string :custom_text3
      t.string :custom_date1
      t.string :custom_date2
      t.string :custom_date3
      t.timestamps
    end
  end
end
