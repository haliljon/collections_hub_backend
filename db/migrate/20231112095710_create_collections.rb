class CreateCollections < ActiveRecord::Migration[7.1]
  def change
    create_table :collections do |t|
      t.string :name
      t.string :image_url, default: "https://www.logolynx.com/topic/unknown#&gid=1&pid=3"
      t.string :custom_str1_name
      t.string :custom_str2_name
      t.string :custom_str3_name
      t.string :custom_int1_name
      t.string :custom_int2_name
      t.string :custom_int3_name
      t.string :custom_bool1_name
      t.string :custom_bool2_name
      t.string :custom_bool3_name
      t.string :custom_text1_name
      t.string :custom_text2_name
      t.string :custom_text3_name
      t.string :custom_date1_name
      t.string :custom_date2_name
      t.string :custom_date3_name

      t.timestamps
    end
  end
end
