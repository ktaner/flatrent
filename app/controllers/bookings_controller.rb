class BookingsController < ApplicationController



  def create
    @booking = Booking.new(booking_params)
    @property = Property.find(params[:booking][:property_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :'properties/show'
    end
  end

  def show
    @booking = Booking.find(params[:id])
    if @booking.user != current_user
      flash[:notice] = "Please log in to see this booking"
      redirect_to new_user_session_path
    end
  end

  private

    def booking_params
      hsh = params.require(:booking).permit(
                  :begin,
                  :end,
                  :property_id)
      hsh[:user_id] = current_user.id
      hsh
    end

end
