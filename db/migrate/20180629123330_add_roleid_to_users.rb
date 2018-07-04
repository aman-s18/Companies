class AddRoleidToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :roleid, :integer
  end
end
