class AddFavoriteTeamToTeam < ActiveRecord::Migration
  def change
  	add_column :teams, :favorite, :boolean, default: false
  end
end
