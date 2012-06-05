class Stud < ActiveRecord::Base
  attr_accessible :grade_id, :name
  
  has_many :grades
  has_many :courses, :through => :grades
  
end
