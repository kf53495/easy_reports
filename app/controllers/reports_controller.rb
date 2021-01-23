class ReportsController < ApplicationController
  def index
  end
  def show
  end
  def new
    @report = Report.new
  end
  def create
    @report = Report.new(report_params)
    if @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def report_params
    params.require(:report).permit(:date, :day, :subject, :time_id, :lesson_type_id, :attendance_status_id, :contact, :hpmework_status, :quiz, :quiz_result, :quiz_correspondence, :study_material, :lesson_contents, :lesson_status, :retry_time, :homework, :teacher) #.merge(student_id:)
  end

end
