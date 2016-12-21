class CreateParticipantTeams < ActiveRecord::Migration
  def change
    create_table :participant_teams do |t|
      t.string :name
      t.string :representative
      t.string :mail_address
      t.string :phone_number
      t.references :tournament, index: true

      t.timestamps
    end
  end
end
