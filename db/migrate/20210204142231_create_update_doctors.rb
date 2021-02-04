class CreateUpdateDoctors < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :specialty, :string
    end
    
end
