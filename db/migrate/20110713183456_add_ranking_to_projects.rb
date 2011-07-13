class AddRankingToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :ranking, :integer
  end

  def self.down
    remove_column :projects, :ranking
  end
end
