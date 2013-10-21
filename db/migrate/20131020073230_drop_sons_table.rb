class DropSonsTable < ActiveRecord::Migration
  def up
    drop_table :sons
  end

  def down
  end
end
