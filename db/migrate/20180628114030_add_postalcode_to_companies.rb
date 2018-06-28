class AddPostalcodeToCompanies < ActiveRecord::Migration[5.2]
  def change
  	add_column :companies, :postalcode, :string
  end
end
