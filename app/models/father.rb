class Father < ActiveRecord::Base
  attr_accessible :name
  has_many :sons
end
