class ParkingCompaniesController < ApplicationController

  def index
    authorize! :index, @parking_company, :message => 'Not authorized as an administrator.' #review for Devise and CanCan
      if params[:company_name]
        @parking_companies = ParkingCompany.where(:company_name => params[:company_name]).first
        @parking_branches = @parking_companies.parking_branches
      else
      @parking_companies = ParkingCompany.all
    end
  end

  def show
      if params[:company_name]
          @parking_company = ParkingCompany.where(:company_name => params[:company_name]).first
          
      else
        @parking_company = ParkingCompany.find(params[:id])
        # redirect_to(ParkingCompany.find(params[:id])) unless @parking_company = ParkingCompany.find_by_name(params[:id])
      end
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
      redirect_to @parking_company, notice: "Successfully created company."
    else
      render :new
    end
  end

  def update
    @parking_company = ParkingCompany.find(params[:id])
    if @parking_company.update_attributes(params[:parking_company])
      redirect_to @parking_company, notice: "Successfully updated company."
    else
      render :edit
    end
  end

  def destroy
    @parking_company = ParkingCompany.find(params[:id])
    @parking_company.destroy
    redirect_to @parking_company, notice: "Successfully destroyed company."
  end
  
end
