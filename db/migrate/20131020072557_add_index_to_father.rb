class AddIndexToFather < ActiveRecord::Migration
  def self.up
    add_index :fathers, :ancestry
  end

  def self.down
    remove_index :fathers, :ancestry
  end
end
