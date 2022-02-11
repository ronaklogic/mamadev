class ChangeIntegerLimitEmployee < ActiveRecord::Migration[7.0]
  def change
    change_column :employee, :mobile_no, :bigint
  end
end
