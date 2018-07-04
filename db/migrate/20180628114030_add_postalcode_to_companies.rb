class AddPostalcodeToCompanies < ActiveRecord::Migration[5.2]
  def change
  	add_column :companies, :postalcode, :integer
  end
end
