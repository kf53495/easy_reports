class CreateStudyMaterials < ActiveRecord::Migration[6.0]
  def change
    create_table :study_materials do |t|
      t.string :name
      t.references :report_id
      t.timestamps
    end
  end
end
