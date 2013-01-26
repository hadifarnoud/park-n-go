class BookingsController < ApplicationController

  respond_to :json, :xml
  def index
    @bookings = Booking.all
  end

    def current
    @bookings = Booking.all
    @bookings_by_date = @bookings.group_by { |b| b.pick_up.strftime("%F").to_date }
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
  end


  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(params[:booking])

      if @booking.save
        redirect_to @booking, notice: 'Booking was successfully created.' 
      else
        render action: "new" 
      end
  end

  def update
    @booking = Booking.find(params[:id])


      if @booking.update_attributes(params[:booking])
        redirect_to @booking, notice: 'Booking was successfully updated.'
      else
        render action: "edit"
      end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy

      redirect_to bookings_url
  end
end
