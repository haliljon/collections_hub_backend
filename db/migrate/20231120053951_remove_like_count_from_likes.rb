class RemoveLikeCountFromLikes < ActiveRecord::Migration[7.1]
  def change
    remove_column :likes, :like_count
  end
end
