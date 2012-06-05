class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.integer :course_id
      t.integer :stud_id
      t.string :lettergrade

      t.timestamps
    end
  end
end
