class CreateMaterialRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :material_relations do |t|
      t.string :material_name
      t.references :student, foreign_key: true
      t.references :study_material, foreign_key: true
      t.timestamps
    end
  end
end
