class AddAncestryToFather < ActiveRecord::Migration
  def change
    add_column :fathers, :ancestry, :string
  end
end
