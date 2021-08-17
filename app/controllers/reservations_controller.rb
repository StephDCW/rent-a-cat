class ReservationsController < ApplicationController
  def show
    @reservation = Reservation.find(params[:id])
    authorize @reservation
  end

  def new
    @reservation = Reservation.new
    authorize @reservation
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    authorize @reservation
    flash[:notice] = @reservation.errors.full_messages.to_sentence unless @reservation.save
    redirect_to offers_path
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.destroy
    redirect_to offers_path
  end

  def edit
    @reservation = Reservation.find(params[:id])
    authorize @reservation
  end

  def update
    @reservation = Reservation.find(params[:id])
    authorize @reservation
    @reservation.update(reservation_params)
    redirect_to offers_path
  end

  def reservation_params
    params.require(:reservation).permit(:total_price, :start_date, :end_date, :offer_id, :user_id)
  end

end
