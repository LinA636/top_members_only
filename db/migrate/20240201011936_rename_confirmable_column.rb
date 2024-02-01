class RenameConfirmableColumn < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :confrimable, :confirmable
  end
end
