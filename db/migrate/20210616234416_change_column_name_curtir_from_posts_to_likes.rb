class ChangeColumnNameCurtirFromPostsToLikes < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :curtir, :likes
  end
end
