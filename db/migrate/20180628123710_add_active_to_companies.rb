class AddActiveToCompanies < ActiveRecord::Migration[5.2]
  def change
   add_column :companies, :active, :boolean


  end
end
