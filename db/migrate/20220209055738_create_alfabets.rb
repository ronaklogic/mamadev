class CreateAlfabets < ActiveRecord::Migration[7.0]
  def change
    create_table :alfabets do |t|

      t.timestamps
      i.string :name
    end
  end
end
