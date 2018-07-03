class UserRegionsController < ApplicationController
	def new
		
	end

def create
 @user_region = User_region.new(params.require(:user_region).permit(:name))
 
  @user_region.save
  redirect_to @user_region
end
		
	
end
