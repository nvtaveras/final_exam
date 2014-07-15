class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :subject_name
      t.integer :subject_id
      t.boolean :active
      t.integer :teacher_id

      t.timestamps
    end
  end
end
