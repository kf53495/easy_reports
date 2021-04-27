class ReportsController < ApplicationController
  # before_action :move_to_index

  # def index
  #   @reports = Report.last(8)
  # end


  def view
    @reports = Report.last(8)
  end

  def show
  end

  def new
    @report = Report.new
    @material_relations = MaterialRelation.last
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      redirect_to report_path(params[:id])
    else
      render :new
    end
  end

  def search
    @reports = Report.search(params[:keyword])
  end

  def choose_student
    @students = Student.all
    if params[:student_name]
     redirect_to root_path
    end
  end

  private

  def report_params
    params.require(:report).permit(:month, :date, :day, :subject, :time_id, :lesson_type_id, :attendance_status_id, :contact, :hpmework_status, :quiz, :quiz_result, :quiz_correspondence, :study_material, :lesson_contents, :lesson_status, :retry_time, :homework, :teacher).merge(student_id: params[:id])
  end

  def move_to_index
    unless employee_signed_in? || student_signed_in? || teacher_signed_in?
      redirect_to new_student_session_path
    end
  end

end
