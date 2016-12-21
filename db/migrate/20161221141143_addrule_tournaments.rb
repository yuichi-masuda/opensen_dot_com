class AddruleTournaments < ActiveRecord::Migration
  def change
    change_column :tournaments, :published, :boolean, :default => true
  end
end
