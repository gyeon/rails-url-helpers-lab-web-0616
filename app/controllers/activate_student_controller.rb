class ActivateStudentController < ApplicationController
  def show
    @student = Student.find(params[:id])
    @student.toggle_active
    @student.save
    redirect_to @student
  end

end