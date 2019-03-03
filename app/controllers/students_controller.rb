class StudentsController < ApplicationController
  def index
    @students = Student.students
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.create!(student_params)
    if(@student.save)
      redirect_to @student
    end
  end


  private
  def student_params
    params.require(:student).permit(:email, :password, :password_confirmation, :role)
  end
end