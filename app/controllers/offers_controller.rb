class OffersController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_offer, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :offer

  # GET /offers
  def index
    @q = @offers.search params[:q]
    @offers = @q.result.page(params[:page])
  end

  # GET /offers/1
  def show
  end

  # GET /offers/new
  def new
  end

  # GET /offers/1/edit
  def edit
  end

  # POST /offers
  def create
    respond_to do |format|
      if @offer.save
        format.html { redirect_to @offer, notice: t('success_create') }
        format.json { render :show, status: :created, location: @offer }
      else
        format.html { render :new }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /offers/1
  def update
    respond_to do |format|
      if @offer.update(offer_params)
        format.html { redirect_to @offer, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @offer }
      else
        format.html { render :edit }
        format.json { render json: @offer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offers/1
  def destroy
    @offer.destroy
    respond_to do |format|
      format.html { redirect_to offers_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def offer_params
    params.require(:offer).permit(:name, :fdate, :active_status, :sort)
  end
end
