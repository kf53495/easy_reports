class CreateStudyMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :study_materials do |t|
      t.string :name
      t.references :report, foreign_key: true
      t.timestamps
    end
  end
end
