class AddAuthorToPost < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :author
    add_reference :posts, :user, null: false, foreign_key: true
  end
end
