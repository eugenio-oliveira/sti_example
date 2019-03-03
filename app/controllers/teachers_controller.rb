class TeachersController < ApplicationController
   def index
    @teachers = Teacher.teachers
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.create!(teacher_params)
    if(@teacher.save)
      redirect_to @teacher
    end
  end


  private
  def teacher_params
    params.require(:teacher).permit(:email, :password, :password_confirmation, :role)
  end
end