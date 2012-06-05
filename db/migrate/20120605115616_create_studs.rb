class CreateStuds < ActiveRecord::Migration
  def change
    create_table :studs do |t|
      t.string :name
      t.integer :grade_id

      t.timestamps
    end
  end
end
