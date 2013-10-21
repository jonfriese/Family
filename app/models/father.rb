class Father < ActiveRecord::Base
  attr_accessible :name, :parent_id
  has_ancestry
  has_many :sons
end
