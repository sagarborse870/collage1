class Student < ApplicationRecord
  has_many :lectures
  has_many :teachers, through: :lectures



 accepts_nested_attributes_for :teachers, :lectures
end
