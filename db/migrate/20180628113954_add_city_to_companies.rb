class AddCityToCompanies < ActiveRecord::Migration[5.2]
  def change
  	add_column :companies, :city, :string
  end
end
