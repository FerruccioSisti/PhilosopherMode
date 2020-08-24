class AddTidToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :tid, :string
  end
end
