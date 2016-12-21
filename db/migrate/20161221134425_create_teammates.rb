class CreateTeammates < ActiveRecord::Migration
  def change
    create_table :teammates do |t|
      t.string :name
      t.string :age
      t.string :participation_event
      t.references :participant_team, index: true

      t.timestamps
    end
  end
end
