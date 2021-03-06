class PfeaturesController < ApplicationController
before_action :authenticate_user!
  # before_action :set_pfeature, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :pfeature

  # GET /pfeatures
  def index
    @q = @pfeatures.search params[:q]
    @pfeatures = @q.result.page(params[:page])
    @pfeature1bs = Pfeature.pf1b
  end

  # GET /pfeatures/1
  def show
  end

  # GET /pfeatures/new
  def new
  end

  # GET /pfeatures/1/edit
  def edit
  end

  # POST /pfeatures
  def create
    respond_to do |format|
      if @pfeature.save
        format.html { redirect_to @pfeature, notice: t('success_create') }
        format.json { render :show, status: :created, location: @pfeature }
      else
        format.html { render :new }
        format.json { render json: @pfeature.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pfeatures/1
  def update
    respond_to do |format|
      if @pfeature.update(pfeature_params)
        format.html { redirect_to @pfeature, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @pfeature }
      else
        format.html { render :edit }
        format.json { render json: @pfeature.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pfeatures/1
  def destroy
    @pfeature.destroy
    respond_to do |format|
      format.html { redirect_to pfeatures_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def pfeature_params
    params.require(:pfeature).permit(:name, :fdate, :active_status, :sort)
  end
end
