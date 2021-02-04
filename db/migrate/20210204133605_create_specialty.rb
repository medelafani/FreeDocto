class Specialty < ActiveRecord::Migration[6.1]
  def change
    create_table :specialty do |t|
        t.timestamps
    end
    add_column :doctors, :specialty
  end
end
