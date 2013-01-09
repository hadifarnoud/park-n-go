class ParkingCompaniesController < ApplicationController

  def index
    authorize! :index, @parking_company, :message => 'Not authorized as an administrator.' #review for Devise and CanCan
      if params[:company_name]
        @parking_companies = ParkingCompany.where(:company_name => params[:company_name])
      else
      @parking_companies = ParkingCompany.all
    end
  end

  def show
    @parking_company = ParkingCompany.find(params[:id])
  end
  
  def new
    @parking_company = ParkingCompany.new

  end

  def edit
    @parking_company = ParkingCompany.find(params[:id])
  end


  def create
    @parking_company = ParkingCompany.new(params[:parking_company])
    if @parking_company.save
      redirect_to @parking_company, notice: "Successfully created survey."
    else
      render :new
    end
  end

  def update
    @parking_company = ParkingCompany.find(params[:id])
    if @parking_company.update_attributes(params[:survey])
      redirect_to @parking_company, notice: "Successfully updated survey."
    else
      render :edit
    end
  end

  def destroy
    @parking_company = ParkingCompany.find(params[:id])
    @parking_company.destroy
    redirect_to @parking_company, notice: "Successfully destroyed survey."
  end
  
end
