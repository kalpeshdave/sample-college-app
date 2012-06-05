class Course < ActiveRecord::Base
  attr_accessible :description, :name, :number

  has_many :grades
  has_many :studs, :through => :grades
end
