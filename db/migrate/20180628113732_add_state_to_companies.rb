class AddStateToCompanies < ActiveRecord::Migration[5.2]
  def change
  	add_column :companies, :state, :string
  end
end
