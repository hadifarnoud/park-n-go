module Api
  module V1
    class ParkingsController < ApplicationController
      # GET /parkings
      # GET /parkings.json
      respond_to :json, :xml
      def index
        @parkings = Parking.all

      end

      # GET /parkings/1
      # GET /parkings/1.json
      def show
        @parking = Parking.find(params[:id])

      end

      # GET /parkings/new
      # GET /parkings/new.json
      def new
        @parking = Parking.new

      end

      # GET /parkings/1/edit
      def edit
        @parking = Parking.find(params[:id])
      end

      # POST /parkings
      # POST /parkings.json
      def create
        @parking = Parking.new(params[:parking])

          if @parking.save
            redirect_to @parking, notice: 'Parking was successfully created.' 
          else
            render action: "new" 
          end
      end

      # PUT /parkings/1
      # PUT /parkings/1.json
      def update
        @parking = Parking.find(params[:id])

      end

      # DELETE /parkings/1
      # DELETE /parkings/1.json
      def destroy
        @parking = Parking.find(params[:id])
        @parking.destroy

      end
    end
  end
end
