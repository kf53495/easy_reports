class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
            
      t.date :date
      t.string :day
      t.string :subject
      t.integer :time_id
      t.integer :lesson_type_id
      t.integer :attendance_status_id
      t.string :contact
      t.string :homework_status
      t.string :quiz
      t.string :quiz_result
      t.string :quiz_correspondence
      t.string :study_material
      t.text :lesson_contents
      t.string :lesson_status
      t.string :retry_time
      t.string :homework
      t.string :teacher
      # teacher名の表示はアソシエーションを用いて実装

      t.timestamps
    end
  end
end
