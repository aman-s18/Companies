class AddCountryIdToCompanies < ActiveRecord::Migration[5.2]
  def change

add_column :companies, :country_id, :integer

end
end
