class MaterialRelation < ApplicationRecord
  belongs_to :student
  belongs_to :study_material

  def save_material
    material_relation = MaterialRelation.last
    material_relation.material_name = material_relation.study_material.name
    material_relation.save
  end
end
