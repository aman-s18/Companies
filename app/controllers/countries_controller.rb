class CountriesController < ApplicationController

	def new
	end
	

	def create
  	@country = Country.new(country_params)
   	@country.save
  	redirect_to @country
	end
end
 
private
  	def country_params
    params.require(:country).permit(:country_name)
  	end


