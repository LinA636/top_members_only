class DropTableTablePosts < ActiveRecord::Migration[7.1]
  def change
    drop_table :table_posts
  end
end
