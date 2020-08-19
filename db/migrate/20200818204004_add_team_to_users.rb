class AddTeamToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :team, :string
    add_column :users, :playername, :string
  end
end
