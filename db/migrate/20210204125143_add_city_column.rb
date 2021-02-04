class AddCityColumn < ActiveRecord::Migration[6.1]
  def change
    add_column :doctors, :city, :string
    add_column :patients, :city, :string
    add_column :appointments, :city, :string
  end
end
