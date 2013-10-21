class Father < ActiveRecord::Base
  attr_accessible :name, :parent_id
  has_ancestry
end
