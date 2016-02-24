class CreateRedbuses < ActiveRecord::Migration
  def self.up
    create_table :redbuses do |t|
      t.text :one
      t.string :two
      t.string :three
      t.string :four
      t.timestamps
    end
  end

  def self.down
    drop_table :redbuses
  end
end
