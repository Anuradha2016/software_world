class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :gender
      t.string :nationality
      t.text :email
      t.text :password
      t.text :salt

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
