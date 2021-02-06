class CreateMaterialRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :material_relations do |t|
      t.string :material_name
      t.references :student
      t.references :study_material
      t.timestamps
    end
  end
end
