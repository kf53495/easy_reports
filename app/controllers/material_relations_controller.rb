class MaterialRelationsController < ApplicationController
  def new
    @material_relation = MaterialRelation.new
  end

  def create
    @material_relation = MaterialRelation.new(study_material_params)
    if @material_relation.save
      redirect_to controller: 'study_materials', action: 'index'
    else
      render :new
    end
  end

  private

  def study_material_params
    params.require(:material_relation).permit(:student_id, :study_material_id)
    #params.require(:material_relation).permit(:student_id, :study_material_id).merge(student_id: params[:student_id])
  end
end
