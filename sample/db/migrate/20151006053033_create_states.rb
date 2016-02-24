class CreateStates < ActiveRecord::Migration
  def self.up
    create_table :states do |t|
      t.column :state, :string
      t.column :country_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :states
  end
end
