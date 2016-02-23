class CreateLocats < ActiveRecord::Migration
  def self.up
    create_table :locats do |t|
      t.string :name
      t.string :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end

  def self.down
    drop_table :locats
  end
end
