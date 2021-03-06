# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#100.times do |index|
#  d_index = Doctor.create(first_name:"Nom#{index}", last_name: "Prenom#{index}", specialty: "spé#{index}", zip_code: "#{index * 2}")
#  p_index = Patient.create(first_name:"Patnom#{index}", last_name: "Latnom#{index}")
#  a_index = Appointment.create(doctor: d_index, patient: p_index, date:index )
#end

require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Specialty.destroy_all

=begin
# Generate fake specialities
doc_spec = ["Cardiologie", "Dermatologie", "Allergologie", "Immunologie", "Androloge", "Gynécologie", "Généraliste"]
doc_spec.each { |i| Specialty.create(title: i) }


# Generate fake patients
100.times do
  Patient.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end


# Generate fake doctors
20.times do
  spec = Specialty.order("RANDOM()").limit(1).ids[0]
  Doctor.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    zip_code: Faker::Number.number(digits: 5),
    specialty: spec
  )
end

=end
# Generate fake city
20.times do
  City.create(
    name: Faker::Address.city
  )
end


# Generate fake appointments
200.times do
  d = Doctor.order("RANDOM()").limit(1).ids[0]
  p = Patient.order("RANDOM()").limit(1).ids[0]
  c = City.order("RANDOM()").limit(1).ids[0]
  Appointment.create(
    doctor_id: d,
    patient_id: p,
    city: c,
    date: Faker::Time.between(from: '2021-09-01', to: '2021-11-01')
  )
end