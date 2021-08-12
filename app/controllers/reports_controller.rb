class ReportsController < ApplicationController
  before_action :move_to_index

  def view
    @student = Student.find(params[:id])
    @reports = Report.where(student_id: params[:id])
  end

  def new
    @report = Report.new
    @material_name = MaterialRelation.where(student_id: params[:id]).pluck(:material_name)
    @material_name << 'その他'
    @teacher = current_teacher.last_name
    gon.teacher = @teacher
  end

  def create
    @report = Report.new(report_params)
    if @report.save
      student_id = params.require(:report).permit(:student_id).to_s.delete("^0-9")
      student = Student.find(student_id)
      redirect_to view_report_path(student.id)
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

  def add_accounts
    if employee_signed_in?
      redirect_to new_student_session_path
    end
  end

  def back
    if employee_signed_in?
      redirect_to new_student_session_path
    end
  end

  private

  def report_params
    params.require(:report).permit(:month, :date, :day, :subject, :time, :lesson_type_id, :attendance_status_id, :contact, :homework_status, :quiz, :quiz_result, :quiz_correspondence, :study_material, :other_study_material, :lesson_contents, :lesson_status, :retry_time, :homework, :teacher, :student_id)
  end

  def move_to_index
    unless employee_signed_in? || student_signed_in? || teacher_signed_in?
      redirect_to new_student_session_path
    end
  end

end
