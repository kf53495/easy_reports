class StudyMaterialsController < ApplicationController
  def index
  end

  def new
    @study_material = StudyMaterial.new
  end

  def create
    @study_material = StudyMaterial.new(study_material_params)
    if @study_material.save
      redirect_to action: 'index'
    else
      render :new
    end
  end

  private

  def study_material_params
    params.require(:study_material).permit(:name)
  end
end
