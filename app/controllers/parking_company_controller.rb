class ParkingCompanyController < ApplicationController
  def index
    authorize! :index, @parking_company, :message => 'Not authorized as an administrator.'
    @parking_companies = ParkingCompany.all
  end

  def show
    @parking_company = ParkingCompany.find(params[:id])
  end
  
  def new
    @parking_company = ParkingCompany.new
  end

  def update
  end

  def destroy
  end
end
