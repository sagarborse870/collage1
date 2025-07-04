class Lecture < ApplicationRecord
  belongs_to :student
  belongs_to :teacher

  accepts_nested_attributes_for :teacher
end


