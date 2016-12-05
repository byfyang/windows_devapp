class CreateMarketingTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :marketing_teams do |t|
      t.string :name
      t.integer :coolness

      t.timestamps
    end
  end
end
