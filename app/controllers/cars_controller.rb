class CarsController < ApplicationController
  before_filter :authenticate_user!
  respond_to :json, :xml
  def index
    @cars = Car.all

  end

  def show
    @car = Car.find(params[:id])

  end


  def new
    @car = Car.new

  end


  def edit
    @car = Car.find(params[:id])
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(params[:car])


      if @car.save
        redirect_to @car, notice: 'Car was successfully created.'

      else
        render action: "new"

      end

  end

  # PUT /cars/1
  # PUT /cars/1.json
  def update
    @car = Car.find(params[:id])


      if @car.update_attributes(params[:car])
        redirect_to @car, notice: 'Car was successfully updated.'

      else
        render action: "edit"

      end

  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car = Car.find(params[:id])
    @car.destroy
      redirect_to cars_url
  end
end
