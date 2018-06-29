class AddStartdateToCompanies < ActiveRecord::Migration[5.2]
  def change


add_column :companies, :startdate, :datetime
  end
end
