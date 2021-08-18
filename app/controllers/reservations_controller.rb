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
    @offer = Offer.find(params[:offer_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.offer = @offer
    number_of_days = @reservation.end_date - @reservation.start_date
    @reservation.total_price = @offer.price * number_of_days
    # 1 - end-date - start date = nb de jours
    # @offer.price * nb de jours
    # @reservation.price = truc du dessus
    authorize @reservation
    if @reservation.save
      flash[:notice] = @reservation.errors.full_messages.to_sentence unless @reservation.save
      redirect_to reservation_path(@reservation)
    else
      redirect_to offer_path(@offer)
    end
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
