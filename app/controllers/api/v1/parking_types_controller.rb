class ParkingTypesController < ApplicationController
  # GET /parking_types
  # GET /parking_types.json
  def index
    @parking_types = ParkingType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @parking_types }
    end
  end

  # GET /parking_types/1
  # GET /parking_types/1.json
  def show
    @parking_type = ParkingType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @parking_type }
    end
  end

  # GET /parking_types/new
  # GET /parking_types/new.json
  def new
    @parking_type = ParkingType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @parking_type }
    end
  end

  # GET /parking_types/1/edit
  def edit
    @parking_type = ParkingType.find(params[:id])
  end

  # POST /parking_types
  # POST /parking_types.json
  def create
    @parking_type = ParkingType.new(params[:parking_type])

    respond_to do |format|
      if @parking_type.save
        format.html { redirect_to @parking_type, notice: 'Parking type was successfully created.' }
        format.json { render json: @parking_type, status: :created, location: @parking_type }
      else
        format.html { render action: "new" }
        format.json { render json: @parking_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /parking_types/1
  # PUT /parking_types/1.json
  def update
    @parking_type = ParkingType.find(params[:id])

    respond_to do |format|
      if @parking_type.update_attributes(params[:parking_type])
        format.html { redirect_to @parking_type, notice: 'Parking type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @parking_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_types/1
  # DELETE /parking_types/1.json
  def destroy
    @parking_type = ParkingType.find(params[:id])
    @parking_type.destroy

    respond_to do |format|
      format.html { redirect_to parking_types_url }
      format.json { head :no_content }
    end
  end
end
