class CompaniesController < ApplicationController
  before_action :authenticate_user!
      
  def new
    @company = Company.new
  end

  def index
    @companies = Company.all
  end
  	
  def show
    @company = Company.find(params[:id,])
  end

  def create
    @company = Company.new(company_params)
    if @company.save
        flash[:notice] = "You have signed up successdully"
        flash[:color] = "valid"
    else
        flash[:notice] = "Invalid Input!"
        flash[:color] = "invalid"
        render "new"
    end
  end

  def create
    @company = Company.new(company_params)
    if @company.save!
    redirect_to @company
    else
    render 'new'
    end
  end

  def edit
    @company = Company.find(params[:id])
  end

  def update
      @company = Company.find(params[:id])
   
    if  @company.update(company_params)
      redirect_to @company
    else
      render 'edit'
    end
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    redirect_to companies_path
  end
end  

 
  private
    def company_params
    params.require(:company).permit(:name, :country_id, :state_id, :city_id, :postalcode, :startdate, :active, :image)
    end

