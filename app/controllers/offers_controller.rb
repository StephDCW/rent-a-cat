class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user_id = @offer
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def update
    @offer = Offer.find(params[:id])
    if @offer.update_attributes(offer_params)
      redirect_to offer_path(@offer)
    else
      render 'show'
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to root_path
  end

  private

  def offer_params
    params.require(:offer).permit(:name, :price, :age, :description, :species )
  end
end
