class DropTableChoices < ActiveRecord::Migration
  def self.up
    drop_table :choices
  end

  def self.down
    create_table :choices do |t|
      t.integer :player_id
      t.integer :user_id

      t.timestamps
    end
    
    add_index :choices, :player_id
    add_index :choices, :user_id
  end
end
