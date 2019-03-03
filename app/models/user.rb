class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
extend Enumerize

  enumerize :role, in: [:student, :teacher, :test], default: :test

  scope :students, -> { where(role: :student) }
  scope :teachers, -> { where(role: :teacher) }

end
