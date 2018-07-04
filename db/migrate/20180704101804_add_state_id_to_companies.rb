class AddStateIdToCompanies < ActiveRecord::Migration[5.2]
  def change
  	add_column :companies, :state_id, :integer
  end
end
