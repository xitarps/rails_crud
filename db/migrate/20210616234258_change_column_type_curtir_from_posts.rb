class ChangeColumnTypeCurtirFromPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :curtir, :integer, default: 0
  end
end
