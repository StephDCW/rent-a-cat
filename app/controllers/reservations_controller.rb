class ReservationsController < ApplicationController
  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    flash[:notice] = @reservation.errors.full_messages.to_sentence unless @reservation.save
    redirect_to offers_path
  end

  def destroy
    @reservation.destroy
    redirect_to offers_path
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update(reservation_params)
    redirect_to offers_path
  end

  def reservation_params
    params.require(:reservations).permit(:total_price, :start_date, :end_date, :offer_id, :user_id)
  end

end
