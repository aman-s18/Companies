class AddMonthlyToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :monthly, :decimal
  end
end
