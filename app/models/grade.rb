class Grade < ActiveRecord::Base
  attr_accessible :course_id, :lettergrade, :stud_id
  belongs_to :stud
  belongs_to :course
end
