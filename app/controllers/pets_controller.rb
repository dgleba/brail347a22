class PetsController < ApplicationController
before_filter :authenticate_user!
  # before_action :set_pet, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :pet

  # GET /pets
  def index
    @q = @pets.search params[:q]
    @pets = @q.result.page(params[:page])
  end

  # GET /pets/1
  def show
  end

  # GET /pets/new
  def new
  end

  # GET /pets/1/edit
  def edit
  end

  # POST /pets
  def create
    respond_to do |format|
      if @pet.save
        format.html { redirect_to @pet, notice: t('success_create') }
        format.json { render :show, status: :created, location: @pet }
      else
        format.html { render :new }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pets/1
  def update
    respond_to do |format|
      if @pet.update(pet_params)
        format.html { redirect_to @pet, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @pet }
      else
        format.html { render :edit }
        format.json { render json: @pet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pets/1
  def destroy
    @pet.destroy
    respond_to do |format|
      format.html { redirect_to pets_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def pet_params
    params.require(:pet).permit(:name, :description, { image: [] } )
  end
end
