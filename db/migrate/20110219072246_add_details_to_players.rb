class AddDetailsToPlayers < ActiveRecord::Migration
  def self.up
    add_column :players, :age, :integer
    add_column :players, :occupation, :string
  end

  def self.down
    remove_column :players, :occupation
    remove_column :players, :age
  end
end
