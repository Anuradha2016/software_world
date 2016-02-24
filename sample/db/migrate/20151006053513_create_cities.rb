class CreateCities < ActiveRecord::Migration
  def self.up
    create_table :cities do |t|
   t.column :city, :string

   t.column :state_id, :integer

      t.timestamps
    end
  end

  def self.down
    drop_table :cities
  end
end
