class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    
    add_index :players, :name, :unique => true
  end

  def self.down
    drop_table :players
  end
end
