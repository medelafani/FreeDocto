class Specialty < ApplicationRecord
  has_many :doctors, through: :doctors_specialties
end
