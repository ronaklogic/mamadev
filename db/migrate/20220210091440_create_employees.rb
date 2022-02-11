class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :mobile_no
      t.string :address
      t.string :city

      t.timestamps
    end
  end
end
