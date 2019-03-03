class Student < User
 
  before_save :set_role

  def is_student
    "is student" if self.role == :student
  end

  private
  def set_role
    self.role == "student"
  end
end