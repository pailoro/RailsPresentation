class AddBlockToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :block, :boolean, default: false
  end
end
