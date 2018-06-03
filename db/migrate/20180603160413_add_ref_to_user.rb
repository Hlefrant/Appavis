class AddRefToUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :users, :articles, foreign_key: true
  end
end
