class MaterialRelationsController < ApplicationController
  def new
    @material_relation = MaterialRelation.new
  end
  def create
    @material_relation = MaterialRelation.new
    if @study_material.save
      redirect_to controller: 'study_material', action: 'index'
    else
      render :new
    end
  end

  private

  def study_material_params
    params.require(:material_relation).merge(:student)
  end
end
