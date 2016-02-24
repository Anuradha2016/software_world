class CreateMats < ActiveRecord::Migration
  def self.up
    create_table :mats do |t|
      t.string :first
      t.string :last
      t.string :gender
      t.string :subject
      t.string :nationality
      t.text :email
      t.text :password
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :mats
  end
end
