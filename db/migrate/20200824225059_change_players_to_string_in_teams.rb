class ChangePlayersToStringInTeams < ActiveRecord::Migration[6.0]
  def change
    change_column :teams, :players, :string
  end
end
