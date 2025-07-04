class Teacher < ApplicationRecord
  has_many :lectures
  has_many :students, through: :lectures

  accepts_nested_attributes_for :lectures, :students
end
