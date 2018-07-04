class AddCityIdToCompanies < ActiveRecord::Migration[5.2]
  def change
  	add_column :companies, :city_id, :integer
  end
end
