class Son < ActiveRecord::Base
  attr_accessible :father_id, :name
  belongs_to :father
end
