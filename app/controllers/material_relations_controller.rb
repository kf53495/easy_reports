class MaterialRelationsController < ApplicationController
  def new
    @material_relation = MaterialRelation.new
  end

  def create
    @material_relation = MaterialRelation.new(study_material_params)
    if @material_relation.save
      @material_relation.save_material
      # @study_material = MaterialRelation.last
      # MaterialRelation.new(material_params)
      redirect_to controller: 'study_materials', action: 'index'
    else
      render :new
    end
  end

  private

  def study_material_params
    params.require(:material_relation).permit(:student_id, :study_material_id)
  end

  def material_params
    params
  end
end
