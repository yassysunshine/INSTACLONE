class AddDetailToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :icon, :text
    add_column :users, :blog_id, :integer
  end
end
