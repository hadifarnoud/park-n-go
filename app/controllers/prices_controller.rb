class PricesController < ApplicationController
  # GET /prices
  # GET /prices.json
  def index
    @prices = Price.all
  end

  # GET /prices/1
  # GET /prices/1.json
  def show
    @price = Price.find(params[:id])
  end

  # GET /prices/new
  # GET /prices/new.json
  def new
    @price = Price.new
  end

  # GET /prices/1/edit
  def edit
    @price = Price.find(params[:id])
  end

  # POST /prices
  # POST /prices.json
  def create
    @price = Price.new(params[:price])

      if @price.save
        redirect_to @price, notice: 'Price was successfully created.'
      else
        render action: "new"
      end
  end

  # PUT /prices/1
  # PUT /prices/1.json
  def update
    @price = Price.find(params[:id])

      if @price.update_attributes(params[:price])
        redirect_to @price, notice: 'Price was successfully updated.'
      else
        render action: "edit"
      end
  end

  # DELETE /prices/1
  # DELETE /prices/1.json
  def destroy
    @price = Price.find(params[:id])
    @price.destroy
  end
end
