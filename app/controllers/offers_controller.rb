class OffersController < ApplicationController
  def index
    @offers = policy_scope(Offer).order(created_at: :desc)
    if params[:search]
      @offers = @offers.where(location: params[:search][:query].downcase)
    end
  end

  def show
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.location = @offer.location.downcase
    @offer.user = current_user
    authorize @offer
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def edit
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def update
    @offer = Offer.find(params[:id])
    authorize @offer
    if @offer.update(offer_params)
      redirect_to offer_path(@offer)
    else
      render 'show'
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    authorize @offer
    @offer.destroy
    redirect_to root_path
  end

  private

  def offer_params
    params.require(:offer).permit(:name, :price, :age, :description, :race, :location )
  end
end
