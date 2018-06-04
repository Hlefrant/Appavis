class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :articles_id
  end
end
