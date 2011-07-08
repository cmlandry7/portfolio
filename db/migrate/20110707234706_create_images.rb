class CreateImages < ActiveRecord::Migration
  def self.up
    create_table :images do |t|
      t.string :caption
      t.string :description
      t.references :project

      t.timestamps
    end
  end

  def self.down
    drop_table :images
  end
end
