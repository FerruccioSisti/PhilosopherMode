class CreateDrafts < ActiveRecord::Migration[6.0]
  def change
    create_table :drafts do |t|
      t.string :radiant
      t.string :dire
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
