class ParkingBranchesController < ApplicationController
  def index
    authorize! :index, @parking_branch, :message => 'Not authorized as an administrator.' #review for Devise and CanCan
      @parking_branches = ParkingBranch.all
    if @parking_branches.empty?
      redirect_to add_parking_branch_path, notice: "No Parking Brnach!. please add one"
    else
      render :index
    end
  end

  def show
    @parking_branch = ParkingBranch.find(params[:id])
  end
  
  def new
    @parking_branch = ParkingBranch.new

  end

  def edit
    @parking_branch = ParkingBranch.find(params[:id])
  end


  def create
    @parking_branch = ParkingBranch.new(params[:parking_branch])
    if @parking_branch.save
      redirect_to @parking_branch, notice: "Successfully created branch."
    else
      render :new
    end
  end

  def update
    @parking_branch = ParkingBranch.find(params[:id])
    if @parking_branch.update_attributes(params[:parking_branch])
      redirect_to @parking_branch, notice: "Successfully updated branch."
    else
      render :edit
    end
  end

  def destroy
    @parking_branch = ParkingBranch.find(params[:id])
    @parking_branch.destroy
    redirect_to @parking_branch, notice: "Successfully destroyed branch."
  end
end
