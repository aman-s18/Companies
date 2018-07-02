class UsersController < ApplicationController
	#before_action :authenticate_user
	def new
		
	end
	def index
    @users = User.all
  end
	
	 def show
    @user = User.find(params[:id])
    
  end

def create
  @user = User.new(user_params)
  if @user.save
    redirect_to @user
  else
    render 'new'
  end
end
 
def edit
    @user = current_user
  end

  def update_password
    @user = current_user
    if @user.update(user_params)
      # Sign in the user by passing validation in case their password changed
      bypass_sign_in(@user)
      redirect_to root_path
    else
      render "edit"
    end
  end
def destroy
    @user = User.find(params[:id])
    @user.destroy
 
    redirect_to users_path
  end

 end
private
  def user_params
    params.require(:user).permit(:firstname, :lastname, :companyid, :roleid, :startdate, :enddate, :active)
  end


