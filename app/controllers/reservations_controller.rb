class ReservationsController < ApplicationController
  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = Reservation.new
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end
end
