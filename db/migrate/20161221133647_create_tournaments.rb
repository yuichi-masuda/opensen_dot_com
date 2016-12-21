class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.date :event_date
      t.string :place
      t.string :athletic_event
      t.string :note
      t.date :deadline
      t.boolean :published

      t.timestamps
    end
  end
end
