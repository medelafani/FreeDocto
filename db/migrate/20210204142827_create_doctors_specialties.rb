class CreateDoctorsSpecialties < ActiveRecord::Migration[6.1]
  def change
    create_table :doctors_specialties do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :specialties, index: true
      t.timestamps
    end
  end
end
