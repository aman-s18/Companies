class AddCompanyidToUsers < ActiveRecord::Migration[5.2]
  def change
  	add_column :users, :companyid, :integer
  end
end
