class Teacher < User
  # has_many :classes
  before_save :set_role

  def is_teacher
    "is teacher" if self.role == :teacher
  end

  private
  def set_role
    self.role == "teacher"
  end
end