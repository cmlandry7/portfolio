class DeletePhotos < ActiveRecord::Migration
  def self.up
    drop_table :photos
  end

  def self.down
    create_table :photos do |t|
      t.string :caption
      t.string :description

      t.timestamps
    end
  end
end
